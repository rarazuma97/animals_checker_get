import 'package:flutter/cupertino.dart';
import 'package:animals_checker_get/core/utils/message_type.dart';
 

typedef MessengerCallback<S> = void Function(
  BuildContext context,
  S message, [
  MessageType? messageType,
]);

typedef JsonObject = Map<String, dynamic>;

typedef ErrorBuilder = Widget Function(String? error);
 
