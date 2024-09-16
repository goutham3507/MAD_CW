import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Class Work 01',
      theme: ThemeData(scaffoldBackgroundColor: const Color.fromARGB(255, 225, 184, 236)),
      home: CounterImageToggleScreen(),
    );
  }
}

class CounterImageToggleScreen extends StatefulWidget {
  @override
  _CounterImageToggleScreenState createState() =>
      _CounterImageToggleScreenState();
}

class _CounterImageToggleScreenState extends State<CounterImageToggleScreen> {
  int _counter = 0; // Counter value
  bool _isImageOne = true; // Image toggle state

  // Function to increment the counter
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  // Function to toggle the image
  void _toggleImage() {
    setState(() {
      _isImageOne = !_isImageOne;
    });
  }

  // Function to reset the counter and image state
  void _reset() {
    setState(() {
      _counter = 0;
      _isImageOne = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter and Image Toggle'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Counter Value: $_counter',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _incrementCounter,
              child: Text('Increment'),
            ),
            SizedBox(height: 40),
            _isImageOne
                ? Image.asset("assets/backiee-120299.jpg") 
                : Image.asset("assets/car wallpaper.png"), 
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _toggleImage,
              child: Text('Toggle Image'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _reset,
              child: Text('Reset'),
            ),
          ],
        ),
      ),
    );
  }
}
