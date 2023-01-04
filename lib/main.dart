import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {

  bool kontrol = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kodlama Teknikleri"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /*Text(kontrol ? "DOĞRU" : "YANLIŞ",
              style: TextStyle(
                color: kontrol ? Colors.blue : Colors.red,
                fontSize: kontrol ? 20 : 50,
                fontWeight: kontrol ? FontWeight.normal : FontWeight.bold,
              ),
            ),*/

            ((){

              if(kontrol){
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.done),
                    Text("DOĞRU",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 30,
                      ),
                    ),
                  ],
                );
              }else{
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.cancel),
                    Text("YANLIŞ",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                );
              }

            }()!),
            ElevatedButton(
                child: Text("Durum: 1"),
                onPressed: (){
                  setState(() {
                    kontrol = true;
                  });
                },
            ),
            ElevatedButton(
                child: Text("Durum: 2"),
                onPressed: (){
                  setState(() {
                    kontrol = false;
                  });
                },
            ),
          ],
        ),
      ),
    );
  }
}
