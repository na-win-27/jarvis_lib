import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jarvis/src/common%20_widgets/appBar.dart';
import 'package:jarvis/src/features/customers/screens/newCustomerForm.dart';
import 'package:jarvis/src/features/customers/screens/viewCustomers.dart';
import 'package:jarvis/src/features/elastics/screens/newElasticForm.dart';
import 'package:jarvis/src/features/elastics/screens/viewElastic.dart';
import 'package:jarvis/src/features/employees/screens/employeeList.dart';
import 'package:jarvis/src/features/job/screens/viewRunningJobs.dart';
import 'package:jarvis/src/features/machines/screens/machineList.dart';
import 'package:jarvis/src/features/order/screens/newOrderForm.dart';
import 'package:jarvis/src/features/order/screens/orderOpenList.dart';
import 'package:jarvis/src/features/order/screens/orderPendingList.dart';
import 'package:jarvis/src/features/production/screens/productionView.dart';
import 'package:jarvis/src/features/rawMaterials/screens/materialInwardAdd.dart';
import 'package:jarvis/src/features/rawMaterials/screens/newRawMaterialForm.dart';
import 'package:jarvis/src/features/rawMaterials/screens/rawMaterialView.dart';
import 'package:jarvis/src/features/shiftProgram/screens/shiftViewList.dart';
import 'package:jarvis/src/features/suppliers/screens/newSupplierForm.dart';
import 'package:jarvis/src/features/wastage/screens/wastageView.dart';

class MoreoptionsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: NAppBar(showBackArrow: false),
      body: Container(
        padding: const EdgeInsets.all(15),
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Customers",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black),
              ),
              TextButton(
                onPressed: () => {Get.to(const Newcustomerform())},
                style: TextButton.styleFrom(
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    visualDensity:
                        const VisualDensity(horizontal: 0.7, vertical: 0.8),
                    fixedSize: const Size(double.maxFinite, double.minPositive),
                    backgroundColor: Colors.white70,
                    shape: LinearBorder.none),
                child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Add New Customer',
                        style: TextStyle(color: Colors.black),
                      ),
                      Icon(
                        Icons.arrow_right_sharp,
                        color: Colors.black,
                      )
                    ]),
              ),
              TextButton(
                onPressed: () => {Get.to(ViewCustomer())},
                style: TextButton.styleFrom(
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    visualDensity:
                        const VisualDensity(horizontal: 0.7, vertical: 0.8),
                    fixedSize: const Size(double.maxFinite, double.minPositive),
                    backgroundColor: Colors.white70,
                    shape: LinearBorder.none),
                child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'View Customers',
                        style: TextStyle(color: Colors.black),
                      ),
                      Icon(
                        Icons.arrow_right_sharp,
                        color: Colors.black,
                      )
                    ]),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Raw Materials",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black),
              ),
              TextButton(
                onPressed: () => {Get.to(const NewRawMaterialForm())},
                style: TextButton.styleFrom(
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    visualDensity:
                        const VisualDensity(horizontal: 0.7, vertical: 0.8),
                    fixedSize: const Size(double.maxFinite, double.minPositive),
                    backgroundColor: Colors.white70,
                    shape: LinearBorder.none),
                child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Add New Raw Material',
                        style: TextStyle(color: Colors.black),
                      ),
                      Icon(
                        Icons.arrow_right_sharp,
                        color: Colors.black,
                      )
                    ]),
              ),
              TextButton(
                onPressed: () => {Get.to(RawMaterialViewScreen())},
                style: TextButton.styleFrom(
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    visualDensity:
                        const VisualDensity(horizontal: 0.7, vertical: 0.8),
                    fixedSize: const Size(double.maxFinite, double.minPositive),
                    backgroundColor: Colors.white70,
                    shape: LinearBorder.none),
                child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'View Raw Material Inventory',
                        style: TextStyle(color: Colors.black),
                      ),
                      Icon(
                        Icons.arrow_right_sharp,
                        color: Colors.black,
                      )
                    ]),
              ),
              TextButton(
                onPressed: () => {Get.to(MaterialInwardAdd())},
                style: TextButton.styleFrom(
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    visualDensity:
                        const VisualDensity(horizontal: 0.7, vertical: 0.8),
                    fixedSize: const Size(double.maxFinite, double.minPositive),
                    backgroundColor: Colors.white70,
                    shape: LinearBorder.none),
                child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Add Raw Materials Inward Details',
                        style: TextStyle(color: Colors.black),
                      ),
                      Icon(
                        Icons.arrow_right_sharp,
                        color: Colors.black,
                      )
                    ]),
              ),
              const SizedBox(height: 30),
              const Text(
                "Elastics",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black),
              ),
              TextButton(
                onPressed: () => {Get.to(NewElasticForm())},
                style: TextButton.styleFrom(
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    visualDensity:
                        const VisualDensity(horizontal: 0.7, vertical: 0.8),
                    fixedSize: const Size(double.maxFinite, double.minPositive),
                    backgroundColor: Colors.white70,
                    shape: LinearBorder.none),
                child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Add New Elastic',
                        style: TextStyle(color: Colors.black),
                      ),
                      Icon(
                        Icons.arrow_right_sharp,
                        color: Colors.black,
                      )
                    ]),
              ),
              TextButton(
                onPressed: () => {Get.to(const ViewElastic())},
                style: TextButton.styleFrom(
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    visualDensity:
                        const VisualDensity(horizontal: 0.7, vertical: 0.8),
                    fixedSize: const Size(double.maxFinite, double.minPositive),
                    backgroundColor: Colors.white70,
                    shape: LinearBorder.none),
                child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'View Elastics Data',
                        style: TextStyle(color: Colors.black),
                      ),
                      Icon(
                        Icons.arrow_right_sharp,
                        color: Colors.black,
                      )
                    ]),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Machines",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black),
              ),
              TextButton(
                onPressed: () => {Get.to(MachineListScreen())},
                style: TextButton.styleFrom(
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    visualDensity:
                        const VisualDensity(horizontal: 0.7, vertical: 0.8),
                    fixedSize: const Size(double.maxFinite, double.minPositive),
                    backgroundColor: Colors.white70,
                    shape: LinearBorder.none),
                child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'View Machines',
                        style: TextStyle(color: Colors.black),
                      ),
                      Icon(
                        Icons.arrow_right_sharp,
                        color: Colors.black,
                      )
                    ]),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Employee",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black),
              ),
              TextButton(
                onPressed: () => {Get.to(EmployeelistScreen())},
                style: TextButton.styleFrom(
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    visualDensity:
                        const VisualDensity(horizontal: 0.7, vertical: 0.8),
                    fixedSize: const Size(double.maxFinite, double.minPositive),
                    backgroundColor: Colors.white70,
                    shape: LinearBorder.none),
                child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'View Employees data',
                        style: TextStyle(color: Colors.black),
                      ),
                      Icon(
                        Icons.arrow_right_sharp,
                        color: Colors.black,
                      )
                    ]),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Orders",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black),
              ),
              TextButton(
                onPressed: () => {Get.to(NewOrderForm())},
                style: TextButton.styleFrom(
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    visualDensity:
                        const VisualDensity(horizontal: 0.7, vertical: 0.8),
                    fixedSize: const Size(double.maxFinite, double.minPositive),
                    backgroundColor: Colors.white70,
                    shape: LinearBorder.none),
                child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Add New Order',
                        style: TextStyle(color: Colors.black),
                      ),
                      Icon(
                        Icons.arrow_right_sharp,
                        color: Colors.black,
                      )
                    ]),
              ),
              TextButton(
                onPressed: () => {Get.to(ViewPendingOrderList())},
                style: TextButton.styleFrom(
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    visualDensity:
                        const VisualDensity(horizontal: 0.7, vertical: 0.8),
                    fixedSize: const Size(double.maxFinite, double.minPositive),
                    backgroundColor: Colors.white70,
                    shape: LinearBorder.none),
                child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'View Pending Orders',
                        style: TextStyle(color: Colors.black),
                      ),
                      Icon(
                        Icons.arrow_right_sharp,
                        color: Colors.black,
                      )
                    ]),
              ),
              TextButton(
                onPressed: () => {},
                style: TextButton.styleFrom(
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    visualDensity:
                        const VisualDensity(horizontal: 0.7, vertical: 0.8),
                    fixedSize: const Size(double.maxFinite, double.minPositive),
                    backgroundColor: Colors.white70,
                    shape: LinearBorder.none),
                child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'View Closed Orders',
                        style: TextStyle(color: Colors.black),
                      ),
                      Icon(
                        Icons.arrow_right_sharp,
                        color: Colors.black,
                      )
                    ]),
              ),
              TextButton(
                onPressed: () => {Get.to(ViewOpenOrders())},
                style: TextButton.styleFrom(
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    visualDensity:
                        const VisualDensity(horizontal: 0.7, vertical: 0.8),
                    fixedSize: const Size(double.maxFinite, double.minPositive),
                    backgroundColor: Colors.white70,
                    shape: LinearBorder.none),
                child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'View Open Orders',
                        style: TextStyle(color: Colors.black),
                      ),
                      Icon(
                        Icons.arrow_right_sharp,
                        color: Colors.black,
                      )
                    ]),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Suppliers",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black),
              ),
              TextButton(
                onPressed: () => {Get.to(const NewSupplierForm())},
                style: TextButton.styleFrom(
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    visualDensity:
                        const VisualDensity(horizontal: 0.7, vertical: 0.8),
                    fixedSize: const Size(double.maxFinite, double.minPositive),
                    backgroundColor: Colors.white70,
                    shape: LinearBorder.none),
                child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Add New Supplier',
                        style: TextStyle(color: Colors.black),
                      ),
                      Icon(
                        Icons.arrow_right_sharp,
                        color: Colors.black,
                      )
                    ]),
              ),
              TextButton(
                onPressed: () => {},
                style: TextButton.styleFrom(
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    visualDensity:
                        const VisualDensity(horizontal: 0.7, vertical: 0.8),
                    fixedSize: const Size(double.maxFinite, double.minPositive),
                    backgroundColor: Colors.white70,
                    shape: LinearBorder.none),
                child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'View Suppliers',
                        style: TextStyle(color: Colors.black),
                      ),
                      Icon(
                        Icons.arrow_right_sharp,
                        color: Colors.black,
                      )
                    ]),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Complaints",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black),
              ),
              TextButton(
                onPressed: () => {Get.to(const Newcustomerform())},
                style: TextButton.styleFrom(
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    visualDensity:
                        const VisualDensity(horizontal: 0.7, vertical: 0.8),
                    fixedSize: const Size(double.maxFinite, double.minPositive),
                    backgroundColor: Colors.white70,
                    shape: LinearBorder.none),
                child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Add New Complaint ',
                        style: TextStyle(color: Colors.black),
                      ),
                      Icon(
                        Icons.arrow_right_sharp,
                        color: Colors.black,
                      )
                    ]),
              ),
              TextButton(
                onPressed: () => {},
                style: TextButton.styleFrom(
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    visualDensity:
                        const VisualDensity(horizontal: 0.7, vertical: 0.8),
                    fixedSize: const Size(double.maxFinite, double.minPositive),
                    backgroundColor: Colors.white70,
                    shape: LinearBorder.none),
                child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'View Complaints',
                        style: TextStyle(color: Colors.black),
                      ),
                      Icon(
                        Icons.arrow_right_sharp,
                        color: Colors.black,
                      )
                    ]),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Job Order",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black),
              ),
              TextButton(
                onPressed: () => {Get.to(ViewRunningJobs())},
                style: TextButton.styleFrom(
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    visualDensity:
                        const VisualDensity(horizontal: 0.7, vertical: 0.8),
                    fixedSize: const Size(double.maxFinite, double.minPositive),
                    backgroundColor: Colors.white70,
                    shape: LinearBorder.none),
                child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'View Running Jobs',
                        style: TextStyle(color: Colors.black),
                      ),
                      Icon(
                        Icons.arrow_right_sharp,
                        color: Colors.black,
                      )
                    ]),
              ),

              TextButton(
                onPressed: () => {Get.to(ViewOpenShifts())},
                style: TextButton.styleFrom(
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    visualDensity:
                    const VisualDensity(horizontal: 0.7, vertical: 0.8),
                    fixedSize: const Size(double.maxFinite, double.minPositive),
                    backgroundColor: Colors.white70,
                    shape: LinearBorder.none),
                child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'View Open Shifts',
                        style: TextStyle(color: Colors.black),
                      ),
                      Icon(
                        Icons.arrow_right_sharp,
                        color: Colors.black,
                      )
                    ]),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Production",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black),
              ),
              TextButton(
                onPressed: () => {Get.to(ViewProduction())},
                style: TextButton.styleFrom(
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    visualDensity:
                        const VisualDensity(horizontal: 0.7, vertical: 0.8),
                    fixedSize: const Size(double.maxFinite, double.minPositive),
                    backgroundColor: Colors.white70,
                    shape: LinearBorder.none),
                child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'View Production',
                        style: TextStyle(color: Colors.black),
                      ),
                      Icon(
                        Icons.arrow_right_sharp,
                        color: Colors.black,
                      )
                    ]),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Wastage",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black),
              ),
              TextButton(
                onPressed: () => {Get.to(ViewWastage())},
                style: TextButton.styleFrom(
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    visualDensity:
                        const VisualDensity(horizontal: 0.7, vertical: 0.8),
                    fixedSize: const Size(double.maxFinite, double.minPositive),
                    backgroundColor: Colors.white70,
                    shape: LinearBorder.none),
                child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'View Wastages',
                        style: TextStyle(color: Colors.black),
                      ),
                      Icon(
                        Icons.arrow_right_sharp,
                        color: Colors.black,
                      )
                    ]),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    ));
    throw UnimplementedError();
  }
}

class _loginAttempt {}
