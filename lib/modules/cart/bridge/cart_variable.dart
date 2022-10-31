import 'package:bridge_example/global%20components/state_aware_builder.dart';
import 'package:bridge_example/modules/cart/bridge/cart_keys.dart';
import 'package:bridgestate/bridges.dart';

class CartVariables extends BridgeController {
  final BridgeState _state;

  CartVariables(this._state);

  CartKeys get _keys => CartKeys();

  ControllerState get currentState =>
      _state.read(_keys.currentState, ControllerState.loading).slice;

  @override
  void dispose() {}

  @override
  void initialise() {}
}
