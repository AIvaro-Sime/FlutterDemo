import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'nfc_body.dart';
import 'nfc_controller.dart';

class NfcScreen extends StatelessWidget {
  NfcScreen({Key? key}) : super(key: key);

  final nfcController = Get.put(NfcController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NFC'),
        centerTitle: true,
      ),
      body: Center(
        child: NfcBody(),
      )
    );
  }
}