import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internetchecker/internet_checker_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final InternetController internetController = Get.put(InternetController());

    return Scaffold(
      body: Center(
        child: Obx(() {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                internetController.isConnectedToInternet.value
                    ? Icons.wifi
                    : Icons.wifi_off,
                size: 50,
                color: internetController.isConnectedToInternet.value
                    ? Colors.green
                    : Colors.red,
              ),
              Text(
                internetController.isConnectedToInternet.value
                    ? 'You are connected to the internet.'
                    : 'You are not connected to the internet',
              ),
            ],
          );
        }),
      ),
    );
  }
}
