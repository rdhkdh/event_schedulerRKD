import 'package:flutter/material.dart';
import 'package:event_scheduler_rkd/Page_2.dart';

void main()=> runApp( const MaterialApp(
  home: Home3(),
));

class Home3 extends StatefulWidget {

   const Home3({Key? key}) : super(key: key);

  @override
  State<Home3> createState() => _Home3State();
}

class _Home3State extends State<Home3> {

  var _neweventdata= TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[100],
      appBar: AppBar(
        title: const Text('New Event'),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            Container(
              padding: const EdgeInsets.all(15),
              height: 180,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.purple[800],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: TextField(
                  maxLines: 5,
                  controller: _neweventdata,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  child: const Text('Add new event'),
                onPressed: () {

                    Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context)=>Home2(event: _neweventdata.text,)
                        )
                    );
                },
              ),
            ),
  ],
    )
    )
    );
}

