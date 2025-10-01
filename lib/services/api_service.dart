import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/album_model.dart';

class ApiService {
  static const String _baseUrl = "https://jsonplaceholder.typicode.com/albums";

  Future<List<Album>> fetchAlbums() async {
    try {
      final response = await http.get(
        Uri.parse(_baseUrl),
        headers: {
          "Accept": "application/json",
          "Content-Type": "application/json",
          "User-Agent": "FlutterApp/1.0"
        },
      );

      if (response.statusCode == 200) {
        final List<dynamic> data = jsonDecode(response.body);
        return data.map((json) => Album.fromJson(json)).toList();
      } else {
        throw Exception('Failed to load albums. Status Code: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception("Error fetching albums: $e");
    }
  }
}
