import 'package:flutter/material.dart';
import 'package:wrapcast/core/widgets/appbar_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppbarWidget());
  }
}
