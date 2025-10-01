

import 'package:flutter/material.dart';
import '../models/album_model.dart';

class AlbumDetailsScreen extends StatelessWidget {
  final Album album;
  const AlbumDetailsScreen({super.key, required this.album});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Album Details")),
      body: Center(
        child: Hero(
          tag: "album_${album.id}",
          child: Material(
            color: Colors.transparent,
            child: Text(
              album.title,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
