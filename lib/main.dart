import 'package:flutter/material.dart';
import 'Page_2.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatefulWidget {

   Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String txt = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[100],
        appBar: AppBar(
          title: const Text('Event Scheduler App'),
          centerTitle: true,
          backgroundColor: Colors.deepPurpleAccent,
        ),
      body: ListView(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget> [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: Container(
                padding: const EdgeInsets.all(15),
                height: 100,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.purple[800],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  onChanged: (String str) {
                    print(str);
                    txt = str;
                  },
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: Container(
                padding: const EdgeInsets.all(15),
                height: 100,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.purple[800],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  onChanged: (String str) {
                    print(str);
                    txt = str;
                  },
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: Container(
                padding: const EdgeInsets.all(15),
                height: 100,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.purple[800],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  onChanged: (String str) {
                    print(str);
                    txt = str;
                  },
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context)=> Home2()),
          );
        },
        backgroundColor: Colors.deepPurple[800],
        child: Icon(Icons.add),
      ),
    );
  }
}


