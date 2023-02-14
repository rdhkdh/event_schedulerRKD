import 'package:event_scheduler_rkd/New_event.dart';
import 'package:flutter/material.dart';

void main()=> runApp(MaterialApp(
  home: Home2(),
));

class Home2 extends StatefulWidget {
  String event;
  Home2({Key? key,required this.event}) : super(key: key);

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  List <String> list1 = ["first event","second event", "third event", "fourth event"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[100],
      appBar: AppBar(
        title: const Center(child: Text('Event Scheduler')),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: ListView.builder(
        itemCount: list1.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: const Icon(Icons.calendar_month),
              title: Text('Event ${index+1}'),
              tileColor: Colors.purple,
              subtitle: Text( list1[index] ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context)=> const Home3()),
          );
        },
        backgroundColor: Colors.deepPurple[800],
        child: const Icon(Icons.add),
      ),
    );
  }
}

// children:  <Widget> [
// Card(
// shape: RoundedRectangleBorder(
// borderRadius: BorderRadius.circular(170), //not working?
// ),
// child: ListTile(
// //leading: Icon(Icons.access_alarm),
// title: Text('Event 1 title'),
// tileColor: Colors.purple,
// subtitle: Text('Event Description, date, place'),
// //trailing: Icon(Icons.account_balance_outlined),
// onTap: () {
// debugPrint("Event pressed");
// },
// ),
// ),
// ],
