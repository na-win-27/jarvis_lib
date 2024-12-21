import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:jarvis/src/common%20_widgets/appBar.dart';
import 'package:jarvis/src/features/employees/controllers/employeesController.dart';
import 'package:jarvis/src/features/employees/screens/employeeDetail.dart';
import 'package:jarvis/src/features/machines/controllers/machineViewController.dart';
import 'package:jarvis/src/features/shiftProgram/models/employee.dart';






class EmployeelistScreen extends StatefulWidget {
  @override
  State<EmployeelistScreen> createState() => _EmployeelistScreen();
}

class _EmployeelistScreen extends State<EmployeelistScreen> {
  final employeeController = Get.put(EmployeeController());

  final searchController = TextEditingController();

  late List<Employee> postsFuture = employeeController.employeesList;

  List<Employee>? orders;

  void _latestFormat() {
    final text = searchController.text;
    setState(() {
      orders = postsFuture.where((c) {
        return c.department.toLowerCase().contains(text.toLowerCase());
      }).toList();
    });
  }

  @override
  void initState() {
    // TODO: implement initState

    employeeController.getEmployeesList();

    searchController.addListener(_latestFormat);
    orders = postsFuture;
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
                  hintText: 'Search Machine By ID ',
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
                    ? buildPosts(orders!)
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
  Widget buildPosts(List<Employee> employees) {
    return ListView.builder(
      itemCount: employees.length,
      itemBuilder: (context, index) {
        final order = employees[index];
        return InkWell(
          onDoubleTap: () => {
            Get.to(() =>  EmployeedetailScreen(), arguments: [order.id])
          },
          child: Container(
            color: Colors.grey.shade300,
            margin: const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
            padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
            width: double.maxFinite,
            child: Column(
              children: [
                Row(
                  children: [
                    const SizedBox(width: 10),
                    const Text(
                      "Name-",
                      style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.w900,
                          fontSize: 16),
                    ),
                    Text(
                      order.name,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const SizedBox(width: 10),
                    const Text(
                      "Department-",
                      style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.w900,
                          fontSize: 18),
                    ),
                    Text(
                      order.department!,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
