import 'package:bca_music_player/model/search_result.dart';
import 'package:bca_music_player/service/music_service.dart';
import 'package:flutter/material.dart';

class MusicViewModel with ChangeNotifier {
  bool isLoading = false;
  bool isError = false;

  SearchResult? selectedMusic;
  List<SearchResult> searchResults = [];

  final MusicService _musicService = MusicService();

  Future<void> fetchMusicData(String searchedText) async {
    isLoading = true;
    notifyListeners();
    try {
      searchResults = await _musicService.fetchMusics(searchedText);
      isError = false;
    } catch (e) {
      isError = true;
      searchResults = [];
    }
    isLoading = false;
    notifyListeners();
  }

  void selectMusic(SearchResult music) {
    selectedMusic = music;
    notifyListeners();
  }
}
