import 'package:calculator_app/src/dash/view/widgets/contact_widget.dart';
import 'package:calculator_app/src/dash/vm/contact_vm.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class CoontactView extends StatefulWidget {
  const CoontactView({super.key});

  @override
  State<CoontactView> createState() => _CoontactViewState();
}

class _CoontactViewState extends State<CoontactView> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ContactVM>(builder: (context, vm, _) {
      return Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: Get.width,
            height: Get.height,
            child: Column(
              children: List.generate(vm.allContacts.length, (index) {
                return ContactWidget();
              }),
            ),
          ),
        ),
      );
    });
  }
}
