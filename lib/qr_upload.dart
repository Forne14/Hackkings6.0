import 'package:flutter/material.dart';
import 'package:qr_encrypt/scan_qr.dart';
import 'package:qr_encrypt/loading.dart';
import 'dart:io';

class Upload extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QR N-Crpyt | Upload ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: UploadPage(title: 'QR N-Crypt'),
    );
  }
}

class UploadPage extends StatefulWidget {
  UploadPage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _UploadState createState() => _UploadState();
}

class _UploadState extends State<UploadPage> {
  final myController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }
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

            TextField(
              controller: myController,
              decoration: InputDecoration(
                labelText: "Enter your message here: "
              ),
            ),
            RaisedButton(
              onPressed: () {
                Process.start('java', [
                  '-Xms300m', // Set minimum and maximum heap size to the same value
                  '-Xmx300m', // Set minimum and maximum heap size to the same value
                  '-classpath',
                  'JAVA/'
                ]);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Loading())
                );
              },
              child:
              Text("Encrypt Message"),
            ),

            SizedBox(height: 400,),


          ],
        ),
      ),
    );
  }
}
