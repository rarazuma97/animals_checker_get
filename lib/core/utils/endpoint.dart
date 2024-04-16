import 'package:flutter/widgets.dart';

@immutable
abstract class EndPoint {
  const EndPoint(this.controller);

  @protected
  final String controller;
}
