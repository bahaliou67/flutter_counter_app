import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {

  int _count = 0;

  void _plus(){
    setState(() {
      _count = _count + 1;
    });
  }

  void _moins(){
    setState(() {
      _count = _count - 1;
    });
  }

  void _reset(){
    setState(() {
      _count = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter app"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("$_count", style: TextStyle(fontSize: 80),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(Icons.minimize, size: 40,),
                onPressed: _moins,
              ),
              TextButton(
                child: Text("Reset", style: TextStyle(color: Colors.red),),
                onPressed: _reset,
              ),
              IconButton(
                icon: Icon(Icons.add, size: 40),
                onPressed: _plus,
              )
            ],
          ),
        ],
      ),
    );
  }
}
