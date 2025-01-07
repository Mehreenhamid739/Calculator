import 'package:calculator_app/src/dash/view/widgets/contact_widget.dart';
import 'package:calculator_app/src/dash/vm/contact_vm.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import 'src/dash/view/coontact_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ContactVM()),
      ],
      child: const GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: CoontactView(),
      ),
    );
  }
}
