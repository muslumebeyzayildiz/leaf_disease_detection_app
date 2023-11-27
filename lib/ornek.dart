/*import 'dart:io';
import 'package:flutter/material.dart';
import 'package:tflite/tflite.dart';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ), // Theme Data
      home: MyHomePage(),
    ); // MaterialApp
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyhomePageState createState() => _MyhomePageState();
}

class _MyhomePageState extends State<MyHomePage> {
  late bool _loading;
  late File _image;
  late List _outputs;
  final _imagePicker = ImagePicker();//TODO OK

  void initState() {
    super.initState();
    _loading = true;

    loadModel().then((value) {
      setState(() {
        _loading = false;
      });
    });
  }

  loadModel() async {
    await Tflite.loadModel(
      model: "assets/vww_96_grayscale_quantized.tflite",
      labels: "assets/labels.txt",
    );
  }

  pickImage() async {
    var image = await _imagePicker.getImage(source: ImageSource.gallery);
    if (image == null) return null;
    setState(() {
       _loading = true;
      _image = File(image.path);
    });
    classifyImage(_image);
  }

// Classifiy the image selected
  classifyImage(File image) async {
    var output = await Tflite.runModelOnImage(
      path: image.path,
      numResults: 2,
      threshold: 0.5,
      imageMean: 127.5,
      imageStd: 127.5,
    );

    setState(() {
      _loading = false;
      _outputs = output!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("fvfdvfd"),
      ),
      body: _loading
          ? Container(
              alignment: Alignment.center,
              child: CircularProgressIndicator(),
            ) // Container
          : Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _image == null
                      ? Container() // Container
                      : Container(
                          child: Image.file(_image),
                          height: 500,
                          width: MediaQuery.of(context).size.width - 200,
                        ), // Container*/
                  /*SizedBox(
                    height: 20,
                  ), // SizedBox
                  _outputs != null
                      ? Text(
                          "${_outputs[0]["label"]}"
                              .replaceAll(RegExp(r' [0-9]'), ''),
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                              background: Paint()..color = Colors.white,
                              fontWeight: FontWeight.bold), // TextStyle
                        ) // Text
                      : Text("Classification Waiting")
                ],
              ), // Column
            ), // Container
      floatingActionButton: FloatingActionButton(
        onPressed: pickImage,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // FloatingActionButton
    ); // Scaffold
  }
}
*/