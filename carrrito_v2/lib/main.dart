import 'package:flutter/material.dart';
import 'presentation/responsive_layout.dart';
import 'presentation/desktop_body.dart';
import 'presentation/tablet_body.dart';
import 'presentation/mobile_body.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ResponsiveLayout(
        desktopBody: DesktopScaffold(),
        tabletBody: TabletScaffold(),
        mobileBody: MobileScaffold(),
      ),
      title: ("Tienda de Productos"),
    );
  }
}
