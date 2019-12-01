import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'dart:async';
import 'package:qr_encrypt/scan_qr.dart';

class Loading extends StatelessWidget {
  static const platform = const MethodChannel('Verify');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QR N-Crpyt | Loading  ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoadingPage(title: 'QR N-Crypt'),
    );
  }
}

class LoadingPage extends StatefulWidget {

  LoadingPage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<LoadingPage> {
  static const platform = const MethodChannel('Verify');
  String _message = "Loading";

  Future<void> _Verify() async {
    String message;
    try{
      String result = await platform.invokeMethod('Verify');
    }on PlatformException catch(e){ message = "Unable to do anything";}
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(_message),

          ],
        ),

    );
  }
}
