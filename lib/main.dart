import 'package:flutter/material.dart';
import 'package:khalti_example/homepage.dart';
import 'package:khalti_flutter/khalti_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return KhaltiScope(
        publicKey: "test_public_key_17fdd385389b41a4b20af551b9da1766",
        enabledDebugging: true,
        builder: (context, navKey) {
          return MaterialApp(
            title: 'Khalti Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: const HomePage(),
            navigatorKey: navKey,
            localizationsDelegates: const [
              KhaltiLocalizations.delegate,
            ],
          );
        });
  }
}
