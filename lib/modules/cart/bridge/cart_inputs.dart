import 'package:bridge_example/global%20components/state_aware_builder.dart';
import 'package:bridge_example/modules/cart/bridge/cart_keys.dart';
import 'package:bridgestate/bridges.dart';

class CartInputs extends BridgeController {
  final BridgeState _state;

  CartInputs(this._state);

  CartKeys get _keys => CartKeys();

  setState(ControllerState _) =>
      _state.load(_keys.currentState, _, ControllerState);

  @override
  void dispose() {}

  @override
  void initialise() {}
}
