import '/core/app_export.dart';import 'package:nguyen_manh_hung_s_application1/presentation/messages_screen/models/messages_model.dart';import 'package:flutter/material.dart';class MessagesController extends GetxController {TextEditingController stateDefaultSController = TextEditingController();

Rx<MessagesModel> messagesModelObj = MessagesModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); stateDefaultSController.dispose(); } 
 }
