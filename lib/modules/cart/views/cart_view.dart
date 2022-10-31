import 'package:bridge_example/global%20components/state_aware_builder.dart';
import 'package:bridge_example/modules/cart/bridge/cart_controller.dart';
import 'package:bridge_example/modules/cart/bridge/cart_variable.dart';
import 'package:bridgestate/state/bridge_state/bridge_methods.dart';
import 'package:bridgestate/state/bridge_state/bridge_state.dart';
import 'package:flutter/material.dart';

class CartView extends StatelessWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BridgeState state = bridge(context);
    CartVariables cartVar = CartVariables(state);
    CartController cartController = CartController(state);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          StateAwareBuilder(
            controllerState: cartVar.currentState,
            loading: const Center(child: CircularProgressIndicator()),
            networError: const Center(child: Text("Loaded and not empty")),
            loadedAndNotEmpty:
                const Center(child: Text("Loaded and not empty")),
          ),
          TextButton(
              onPressed: () {
                cartController.simulateState(ControllerState.loadedAndEmpty);
              },
              child: Text(cartVar.currentState.toString()))
        ],
      ),
    );
  }
}
