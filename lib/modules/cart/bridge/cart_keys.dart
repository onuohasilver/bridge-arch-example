import 'package:bridge_example/core/bridge/bridge_controller.dart';

class CartKeys extends BridgeKeys {
  CartKeys({String name = "CartKeys"}) : super(name);

  get currentState => brKey("Current State");
}
