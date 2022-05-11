import 'package:flutter_application_1/extensions.dart';
import 'package:get/get.dart';
import 'package:nfc_manager/nfc_manager.dart';

class NfcController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    createNfcReader();
  }

  @override
  void onClose() {
    super.onClose();
    closeNfcReader();
  }

  final _tag = ''.obs;
  set tag(String tag) => _tag.value = tag;
  String get tag => _tag.value;
  bool isNfcAvailable = true;

  void createNfcReader() async {
    isNfcAvailable = await NfcManager.instance.isAvailable();
    if (!isNfcAvailable) {
      return;
    }

    NfcManager.instance.startSession(onDiscovered: (NfcTag tagReaded) async {
      final id = tagReaded.data["nfca"]["identifier"] as List<int>;
      tag = id.toHexString();
    });
  }

  void closeNfcReader() async {
    if (!isNfcAvailable) {
      return;
    }
    await NfcManager.instance.stopSession();
  }
}
