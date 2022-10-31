import 'package:bridge_example/modules/cart/views/cart_view.dart';
import 'package:bridgestate/state/bridge_base.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ExampleApp());
}

class ExampleApp extends StatelessWidget {
  const ExampleApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const BridgeBase(child: MaterialApp(home: CartView()));
  }
}
