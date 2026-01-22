import 'package:bluetooth_low_energy/bluetooth_low_energy.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var pmanager = PeripheralManager();
    pmanager.authorize();
    pmanager.startAdvertising(Advertisement(name: "sHCI: 󰄌"));

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.dark(),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    // This is not really a build component, should ideally be moved out 
    // of this class into a background thread
    // and then subscribe to events through there, or do polling with intervals
    // if discovered event is raised too often
    var cmanager = CentralManager();
    List<DiscoveredEventArgs> discoveries = [];

    cmanager.authorize();
    cmanager.discovered.listen((eventArgs) {
      final p = eventArgs.peripheral;
      
      // should prop compare on UUID
      final index = discoveries.indexWhere((e) => e.peripheral == p);

      // update discoveries with the newest peripheral found
      if (index < 0) {
        discoveries.add(eventArgs);
      } else {
        discoveries[index] = eventArgs;
      }

      // do a state change to update emoji list
      setState(() => discoveries = discoveries); // do an empty notify to update view
    });
    cmanager.startDiscovery();


    // map each discovered peripheral to a textbox with the uuid + the emoji
    List<Widget> children = discoveries.map((e) {
      return Text('UUID: ${e.peripheral.uuid}\nEmoji: ${e.advertisement.name}');
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: children,
        ),
      ),
    );
  }
}
