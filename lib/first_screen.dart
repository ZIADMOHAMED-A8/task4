import 'package:flutter/material.dart';
import 'package:task/main.dart';

import 'home/home_page/home_page.dart';

class firstScreen extends StatefulWidget {
  const firstScreen({super.key});

  @override
  State<firstScreen> createState() => _firstScreenState();
}

class _firstScreenState extends State<firstScreen> {
  TextEditingController title = TextEditingController();

  TextEditingController body = TextEditingController();

  @override
  void dispose() {
    title.dispose();
    body.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),

      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(fit:BoxFit.cover ,image: AssetImage("assets/springTree.jpg"))
        ),
        child: Column(children: [
          SizedBox(height: 150,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: title,
              decoration: InputDecoration(
                hintText: "title",
                border: OutlineInputBorder()
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: body,
              minLines: 3,
              maxLines: 6, // not working
              decoration: InputDecoration(
                  hintText: "body",
                  border: OutlineInputBorder()
              ),
            ),
          ),
        
        ],),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.save), onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> MyHomePage(
              title: title.text,
              body: body.text,
            )));
      }
      ),
    );
  }
}
