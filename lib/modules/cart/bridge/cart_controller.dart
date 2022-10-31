import 'package:bridge_example/core/bridge/bridge_controller.dart';
import 'package:bridge_example/global%20components/state_aware_builder.dart';
import 'package:bridge_example/modules/cart/bridge/cart_inputs.dart';
import 'package:bridge_example/modules/cart/bridge/cart_variable.dart';
import 'package:bridgestate/state/bridge_state/bridge_state.dart';

class CartController extends BridgeController {
  final BridgeState _state;

  CartController(this._state);

  CartVariables get _cartVar => CartVariables(_state);
  CartInputs get _cartInput => CartInputs(_state);

  simulateState(ControllerState state) {
    //carry out a process here and set the different states as the
    //process progresses
    _cartInput.setState(state);
  }

  @override
  void dispose() {}

  @override
  void initialise() {}
}
