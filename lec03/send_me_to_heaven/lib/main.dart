import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sensors_plus/sensors_plus.dart';

const SENSITIVITY = 100;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: ColorScheme.dark()),
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
  double _throwScore = 0;
  bool _resetState = true;
  List<(double, double, double, DateTime)> _data = [];

  String _validateData(List<(double, double, double, DateTime)> data)
  {
    if (data.length < 1) {
       return "throw too short";
    }
    // Validate the data
    return "";
  }

  // For this function we're gonna make some pretty lazy assumptions
  // Assume perfect up and down throw!
  // Assume it is a valid throw!
  // Assume initial velocity of 0, this one is fair
  void _reset() {
    for (var (x, y, z, date) in _data) {
      var validation = _validateData(_data);
      if (validation.isNotEmpty) {
        // This is not a valid throw
        _throwScore = 0;
        _resetState = true;
        _data.clear();
        return;
      }

      double v = 0; // Assume resting position initially
      double p = 0; // Assume position is just straight up and down
      for (var i = 1; i < _data.length; i++) {
        var (lx, ly, lz, ld) = _data[i - 1];
        var (nx, ny, nz, nd) = _data[i];

        // Get time difference between two points
        var t_diff_s = (nd.millisecondsSinceEpoch - ld.millisecondsSinceEpoch) / 1000;

        // Assume device has kept exact acceleration until next measurement
        var a = sqrt(lx * lx + ly * ly + lz * lz);
        v = v + a * t_diff_s;
        p = p + v * t_diff_s;
      }

      // Now p should just be the total distance travelled!
      // We're just gonna say that it is straight up and down motion,
      // therefore total height must be p/2
      _throwScore = p / 2;
      _resetState = true;
      _data.clear();
    }

    setState(() {
      _resetState = true;
    });
  }


  @override
  Widget build(BuildContext context) {
    userAccelerometerEventStream().listen(
      (UserAccelerometerEvent event) {
        double x = event.x;
        double y = event.y;
        double z = event.z;
        var eventTime = DateTime.now();

        if (x * x + y * y + z * z > SENSITIVITY)
        {
          _resetState = false;
        }

        if (!_resetState) {
          _data.add((x, y, z, eventTime));
        }
      },
      onError: (error) {
        // Logic to handle error
        // Needed for Android in case sensor is not available
        },
      cancelOnError: true,
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            const Text('You have thrown the phone this high:'),
            Text(
              '$_throwScore',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _reset,
        tooltip: 'Increment',
        child: Text("Reset"),
      ),
    );
  }
}
