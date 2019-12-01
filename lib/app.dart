import 'package:flutter/material.dart';
import 'package:qr_encrypt/scan_qr.dart';
import 'package:qr_encrypt/qr_upload.dart';

final routes = {
  '/scanQR': (BuildContext context) => QRViewExample()
};

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QR N-Crpyt',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'QR N-Crypt'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => QRViewExample()));},
                child: Text("Scan QR Code"),
            ),
            SizedBox(width: 40, height: 70,),
            RaisedButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Upload()));},
                child: Text("Upload file"),
            )
          ],
        ),
      ),
    );
  }
}
