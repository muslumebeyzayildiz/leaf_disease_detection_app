//import 'dart:io';// File? _file için
//import 'package:flutter/material.dart';
//import 'package:image_picker/image_picker.dart';
//import 'package:firebase_storage/firebase_storage.dart'; // Firebase Storage için gerekli kütüphane
//import 'package:tflite/tflite.dart'; // TensorFlow Lite için gerekli kütüphane

/*
class kamera extends StatefulWidget{
  const kamera({super.key});

  @override
  State<kamera> createState() {
    return kameraState();
  }
}

class kameraState extends State<kamera> {
  final picker = ImagePicker(); // Resim seçmek için kullanılacak nesne
  //List<Map<String, dynamic>> _outputs = [];// Sınıflandırma sonuçlarını tutacak liste
  List? _outputs;
  bool _loading = false; // İşlemin yürütülüp yürütülmediğini belirten değişken
  File? _pickedImage; // Kameradan çekilen resmi tutacak dosya nesnesi

  @override
  void initState() {
    super.initState();
    loadModel(); // TensorFlow Lite modelini yükle
  }

  loadModel() async {
    await Tflite.loadModel(
      model: 'assets/vww_96_grayscale_quantized.tflite', // Model dosyasının yolu
      labels: 'assets/labels.txt', // Etiket dosyasının yolu
    );
  }

  classifyImage() async {
    setState(() {
      _loading = true; // İşlem başladığında _loading değerini true olarak ayarla
    });

    final pickedImage = await picker.pickImage(source: ImageSource.camera); // Kameradan resim seç

    if (pickedImage == null) {
      setState(() {
        _loading = false; // Eğer resim seçilmediyse _loading değerini false olarak ayarla
      });
      return;
    }

    setState(() {
      _pickedImage = File(pickedImage.path); // Kameradan çekilen resmi sakla
    });

    // Firebase Storage'a resmi yükleme işlemi
    String uniqueFileName = DateTime.now().millisecondsSinceEpoch.toString();
    Reference referenceRoot = FirebaseStorage.instance.ref();
    Reference referenceDirImages = referenceRoot.child('images');
    Reference referenceImageToUpload = referenceDirImages.child(uniqueFileName);

    try {
      await referenceImageToUpload.putFile(File(_pickedImage!.path));
      String imageUrl = await referenceImageToUpload.getDownloadURL();

      // TensorFlow Lite ile resim sınıflandırma işlemi
      var output = await Tflite.runModelOnImage(
        path: imageUrl, // Firebase Storage'dan alınan resmin URL'si
        numResults: 5,
        threshold: 0.1,
        imageMean: 127.5,
        imageStd: 127.5,
      );

      setState(() {
        _loading = false; // İşlem tamamlandığında _loading değerini false olarak ayarla
        _outputs = output!; // Sınıflandırma sonuçlarını _outputs listesine aktar
      });
    } catch (error) {
      // Hata yönetimi
    }
  }

  @override
  void dispose() {
    Tflite.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _loading
                ? CircularProgressIndicator() // İşlem yürütülüyorsa yükleniyor göstergesi göster
                : ElevatedButton(
              onPressed: classifyImage,
              child: Text('Resim Çek ve Sınıflandır'),
            ), // Sınıflandırma işlemi düğmesi
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}*/