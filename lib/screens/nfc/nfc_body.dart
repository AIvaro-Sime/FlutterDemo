import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'nfc_controller.dart';

class NfcBody extends StatelessWidget {
  NfcBody({
    Key? key
  }) : super(key: key);

  final nfcController = Get.find<NfcController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() => Text('Tag value: ${nfcController.tag.isEmpty ? 'Empty' : nfcController.tag}'));
  }
}