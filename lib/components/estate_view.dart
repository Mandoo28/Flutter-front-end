import 'package:flutter/material.dart';
import 'package:mmoo/components/accordion.dart';

class EstateView extends StatelessWidget {
  const EstateView({super.key});

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Container(
        child: const AccordionApp(),
      ),
    );
  }
}
