import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/widgets/counter_widget.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Counter Page"),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              const DrawerHeader(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/profile.jpg'),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Full Name',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Text('fullname@gmail.com')
                  ],
                ),
              ),
              ListTile(
                leading: const Icon(Icons.close),
                title: const Text('Close'),
                onTap: () {
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Counter Value",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              CounterWidget()
            ],
          ),
        ),
      ),
    );
  }
}
