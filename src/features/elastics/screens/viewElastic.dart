import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:jarvis/src/common%20_widgets/appBar.dart';
import 'package:jarvis/src/features/authentication/controllers/login_controller.dart';
import 'package:jarvis/src/features/customers/controllers/customer_list_controller.dart';
import 'package:jarvis/src/features/elastics/controllers/elastic_list_controller.dart';
import 'package:jarvis/src/features/elastics/screens/elasticDetailScreen.dart';

import '../models/elastic.dart';

class ViewElastic extends StatefulWidget {
  const ViewElastic({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ViewElastic();
  }
}

class _ViewElastic extends State<ViewElastic> {
  final loginController = Get.put(LoginController());

  final elasticListController = Get.put(ElasticListController());

  final searchController = TextEditingController();

  late List<Elastic> postsFuture = elasticListController.elasticList;

  List<Elastic>? elastics;

  void _latestFormat() {
    final text = searchController.text;
    setState(() {
      elastics = postsFuture.where((c) {
        return c.name!.toLowerCase().contains(text.toLowerCase());
      }).toList();
    });
  }

  @override
  void initState() {
    // TODO: implement initState

    elasticListController.getElastics();

    searchController.addListener(_latestFormat);
    elastics = postsFuture;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          NAppBar(showBackArrow: true,),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              width: MediaQuery.sizeOf(context).width,
              padding: const EdgeInsets.all(1),
              decoration: const BoxDecoration(
                color: Colors.transparent,
              ),
              child: TextField(
                controller: searchController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  hintText: 'Search Elastics',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: const BorderSide(color: Colors.black)),
                ),
              ),
            ),
          ),
          Obx(
            () => SizedBox(
              height: MediaQuery.sizeOf(context).height,
              child: Center(
                // FutureBuilder
                child: postsFuture.isNotEmpty
                    ? buildPosts(elastics!)
                    : const SpinKitRotatingCircle(
                  color: Colors.blue,
                  size: 50.0,
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }

  // function to display fetched data on screen
  Widget buildPosts(List<Elastic> elastics) {
    return ListView.builder(
      itemCount: elastics.length,
      itemBuilder: (context, index) {
        final elastic = elastics[index];
        return InkWell(
          onDoubleTap: () => {
            Get.to(() => ElasticDetailScreen(), arguments: [elastic.id])
          },
          child: Container(
            color: Colors.grey.shade300,
            margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
            height: 100,
            width: double.maxFinite,
            child: Row(
              children: [
                const SizedBox(width: 10),
                Expanded(flex: 3, child: Text(elastic.name!)),
              ],
            ),
          ),
        );
      },
    );
  }
}
