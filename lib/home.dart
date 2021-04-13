import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController t1 = TextEditingController();

  List mesajlistesi = [];

  mesajlariEkle(String metin) {
    setState(() {
      mesajlistesi.insert(0, t1.text);
      t1.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        margin: EdgeInsets.all(40),
        child: Center(
          child: Column(
            children: [
              Flexible(
                child: ListView.builder(
                  reverse: true,
                  itemCount: mesajlistesi.length,
                  itemBuilder: (context, int indeksNumarasi) =>
                      Text(mesajlistesi[indeksNumarasi]),
                ),
              ),
              Row(
                children: [
                  Flexible(
                    child: TextField(
                      onSubmitted: mesajlariEkle,
                      controller: t1,
                    ),
                  ),
                  ElevatedButton(
                      onPressed: mesajlariEkle(t1.text), child: Text("Gönder"))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
