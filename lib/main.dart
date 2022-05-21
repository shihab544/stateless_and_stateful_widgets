import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stateless and Stateful'),
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 20.0,
              ),
              Text(
                'Welcome To My App',
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(
                height: 20.0,
              ),
              Buttons(),
              FooterWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class Buttons extends StatefulWidget {
  const Buttons({Key? key}) : super(key: key);

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  var maleCounter = 0;
  var femalCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            'Number of Males: $maleCounter',
            style: TextStyle(fontSize: 20),
          ),
          Text(
            'Number of Females: $femalCounter',
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 20,
          ),
          MaterialButton(
            onPressed: () {
              setState(() {
                maleCounter++;
              });
            },
            height: 50,
            minWidth: 200,
            color: Colors.blue,
            elevation: 10,
            child: Text(
              'Male +',
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          MaterialButton(
            onPressed: () {
              setState(() {
                femalCounter++;
              });
            },
            height: 50,
            minWidth: 200,
            color: Colors.blue,
            elevation: 10,
            child: Text(
              'Female +',
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}

class FooterWidget extends StatelessWidget {
  const FooterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.arrow_back),
            Text("Developed by Shihab, CSE"),
            Icon(Icons.arrow_forward),
          ],
        ),
      ],
    );
  }
}
