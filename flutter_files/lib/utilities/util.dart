import 'dart:typed_data';

import 'package:path_provider/path_provider.dart';
import 'package:share/share.dart';
import 'dart:io';

class Utilities {

  /// Function to share processed image returned by processImage
  static shareImage(Uint8List _img) async {
    final d = await getExternalStorageDirectory();
    final directory = d!.path;
    File imgFile = File('$directory/share_image.png');
    imgFile.writeAsBytes(_img);
    Share.shareFiles(
      ['$directory/share_image.png'],
    );
  }



}
