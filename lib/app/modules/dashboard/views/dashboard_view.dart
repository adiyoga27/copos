import 'package:copos/constants.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      padding: const EdgeInsets.all(defaultPadding),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Dashboard",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const Spacer(),
              Expanded(
                  child: TextField(
                decoration: InputDecoration(
                    fillColor: secondaryColor,
                    filled: true,
                    border: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius:  BorderRadius.all(Radius.circular(10)),
                    ),
                    suffixIcon: Container(
                        padding: EdgeInsets.all(defaultPadding * 0.75),
                    )),
              ))
            ],
          )
        ],
      ),
    ));
  }
}
