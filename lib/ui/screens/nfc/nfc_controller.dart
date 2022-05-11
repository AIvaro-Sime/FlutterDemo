import 'dart:developer';
import 'package:flutter_application_1/utils/extensions.dart';
import 'package:get/get.dart';
import 'package:nfc_manager/nfc_manager.dart';
import '../../../use_case/get_all_tpv_use_case.dart';

class NfcController extends GetxController {
  final getAllTpvUseCase = GetAllTpvUseCase();

  @override
  void onInit() {
    super.onInit();
    createNfcReader();
    loadTpvs();
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

  void loadTpvs() async {
    final tpvs = await getAllTpvUseCase();
    log(tpvs);
  }

  void closeNfcReader() async {
    if (!isNfcAvailable) {
      return;
    }
    await NfcManager.instance.stopSession();
  }
}
