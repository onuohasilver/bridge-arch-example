import 'package:flutter/material.dart';

class StateAwareBuilder extends StatelessWidget {
  const StateAwareBuilder(
      {Key? key,
      required this.controllerState,
      this.searching,
      this.filtering,
      required this.loading,
      required this.loadedAndNotEmpty,
      this.loadedAndEmpty,
      this.networError,
      this.reloading,
      this.networkErrorAndEmpty,
      this.networkErrorAndNotEmpty})
      : super(key: key);

  final ControllerState controllerState;
  final Widget? searching,
      filtering,
      networError,
      reloading,
      networkErrorAndEmpty,
      loadedAndEmpty,
      networkErrorAndNotEmpty;

  final Widget loading, loadedAndNotEmpty;

  @override
  Widget build(BuildContext context) {
    try {
      switch (controllerState) {
        case ControllerState.searching:
          return searching!;
        case ControllerState.filtering:
          return filtering!;
        case ControllerState.loading:
          return loading;
        case ControllerState.loadedAndNotEmpty:
          return loadedAndNotEmpty;
        case ControllerState.loadedAndEmpty:
          return loadedAndEmpty!;
        case ControllerState.networkErrorAndEmpty:
          return networkErrorAndEmpty!;
        case ControllerState.networkErrorAndNotEmpty:
          return networkErrorAndNotEmpty!;
        case ControllerState.reloading:
          return reloading!;
        case ControllerState.networkError:
          return networError!;
        default:
          return loading;
      }
    } catch (e) {
      return loading;
    }
  }
}

enum ControllerState {
  searching,
  filtering,
  reloading,
  networkErrorAndNotEmpty,
  networkError,
  networkErrorAndEmpty,
  loading,
  loadedAndNotEmpty,
  loadedAndEmpty
}
