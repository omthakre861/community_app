import 'package:flutter/material.dart';
import 'package:mapbox_gl/mapbox_gl.dart';
import 'color_schemes.g.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
      darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var counter = 0;
  // This widget is the root of your application.

  addCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 2,
          title: Text("Community app"),
        ),
        body: MapboxMap(
          accessToken: const String.fromEnvironment("ACCESS_TOKEN"),
          initialCameraPosition: CameraPosition(target: LatLng(19.465622, 72.806099)))
        
        );
  }
}
