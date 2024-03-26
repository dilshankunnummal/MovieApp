import 'package:flutter/material.dart';

class CounterWidget extends StatefulWidget {
  const CounterWidget({super.key});

  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('$count', style: const TextStyle(fontSize: 30)),
        ElevatedButton(
          onPressed: () {
            setState(() {
              count++;
            });
          },
          child: const Text('Click Me'),
        ),
        const SizedBox(
          height: 10,
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              increment();
            });
          },
          child: Container(
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(15),
            ),
            child: const Padding(
              padding: EdgeInsets.all(18.0),
              child: Text(
                'Click Me!!!',
                style: TextStyle(fontSize: 15),
              ),
            ),
          ),
        ),
        SizedBox(height: 10,),
        
        Material(
          elevation: 16,
          borderRadius: BorderRadius.circular(16),
          clipBehavior: Clip.hardEdge,
          child: InkWell(
            splashColor: Colors.red,
            onTap: () {
              setState(() {
                increment();
              });
            },
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.green,
              ),
              child: const Padding(
                padding: EdgeInsets.all(18.0),
                child: Text(
                  'Click Me!!!',
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              count = 0;
            });
          },
          child: const Text('Reset'),
        ),
      ],
    );
  }

  void increment() {
    count++;
  }
}
