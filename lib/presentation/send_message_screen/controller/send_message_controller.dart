import '/core/app_export.dart';import 'package:nguyen_manh_hung_s_application1/presentation/send_message_screen/models/send_message_model.dart';import 'package:flutter/material.dart';class SendMessageController extends GetxController {TextEditingController statusDefaultController = TextEditingController();

Rx<SendMessageModel> sendMessageModelObj = SendMessageModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); statusDefaultController.dispose(); } 
 }
