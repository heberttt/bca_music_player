import 'package:bca_music_player/view/page/music_page.dart';
import 'package:bca_music_player/view_model/music_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (_) => MusicViewModel(),
      child: const MaterialApp(
        home: MusicPage(),
      ),
    ),
  );
}