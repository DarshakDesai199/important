import 'dart:convert';
import 'dart:typed_data';
import 'package:http/http.dart' as http;

Future<Uint8List> fetchAudio(String url) async {
  final response = await http.get(Uri.parse(url));
  if (response.statusCode == 200) {
    final bytes = response.bodyBytes;
    print('Bytes == $bytes');
    Uint8List d = Uint8List.fromList(bytes);
    return d;
  } else {
    throw Exception('Failed to load audio');
  }
}
