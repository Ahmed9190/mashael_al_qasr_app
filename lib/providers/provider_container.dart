import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProviderContainer extends StatefulWidget {
  final Widget child;
  final ChangeNotifier provider;
  const ProviderContainer({
    Key? key,
    required this.child,
    required this.provider,
  }) : super(key: key);

  @override
  State<ProviderContainer> createState() => _ProviderContainerState();
}

class _ProviderContainerState extends State<ProviderContainer> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => widget.provider,
      child: widget.child,
    );
  }
}
