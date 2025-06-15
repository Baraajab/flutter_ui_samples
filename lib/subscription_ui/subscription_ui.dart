import 'package:flutter/material.dart';
import 'package:flutter_ui_samples/subscription_ui/screen/subscription_screen.dart';

class subscription_app extends StatelessWidget {
  const subscription_app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Subscription app',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: SubscriptionScreen(),
    );
  }
}
