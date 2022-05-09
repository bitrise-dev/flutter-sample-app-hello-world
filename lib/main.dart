import 'package:flutter/material.dart';
import 'package:image_pixels/image_pixels.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello Bitrisers!',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Hello Bitrisers!'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final AssetImage bitriseFlutter = const AssetImage("lib/images/BitriseFlutter.png");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title!),
      ),
      body: SizedBox.expand(
        child: Column(
          children: <Widget>[
            Expanded(
              child: ImagePixels.container(
                imageProvider: bitriseFlutter,
                child: Container(
                  alignment: Alignment.center,
                  child: SizedBox(width: 600, child: Image(image: bitriseFlutter)),
                ),
              ),
            ),
            //
            //
          ],
        ),
      ),
    );
  }
}
