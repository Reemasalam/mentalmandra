import 'package:flutter/material.dart';
import 'dart:async';

class GameScreen extends StatefulWidget {
  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  int _counter = 0;
  bool _isGameActive = false;
  Timer? _timer;
  int _timeLeft = 10; // 10-second game duration

  void _startGame() {
    setState(() {
      _counter = 0;
      _isGameActive = true;
      _timeLeft = 10;
    });
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_timeLeft == 0) {
        setState(() {
          _isGameActive = false;
        });
        timer.cancel();
      } else {
        setState(() {
          _timeLeft--;
        });
      }
    });
  }

  void _incrementCounter() {
    if (_isGameActive) {
      setState(() {
        _counter++;
      });
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color(0xFFFED0B2),
      appBar: AppBar(
        title: Text('Tap the Button Game'),
       backgroundColor:Color(0xffDE6060),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Time Left: $_timeLeft',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text(
                'Score: $_counter',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _incrementCounter,
                child: Text('Tap Me!', style: TextStyle(fontSize: 24,color:Colors.white),),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 230, 112, 112),
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                ),
              ),
              SizedBox(height: 20),
              if (!_isGameActive)
                ElevatedButton(
                  onPressed: _startGame,
                  child: Text('Start Game', style: TextStyle(fontSize: 24,color:Colors.white)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor:  Color.fromARGB(255, 230, 112, 112),
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
