import 'dart:convert';

import 'package:bca_music_player/model/search_result.dart';
import 'package:http/http.dart' as http;

class MusicService {
  Future<List<SearchResult>> fetchMusics(String searchedText) async {
    try {
      final response = await http.get(
        Uri.parse("https://itunes.apple.com/search?term=$searchedText&media=music&entity=song"),
      );

      dynamic data = jsonDecode(response.body);
      final jsonData = data['results'] as List;

      List<SearchResult> searchResults = jsonData
          .map((result) => SearchResult.fromJson(result))
          .toList();

      return searchResults;
    } catch (e) {
      throw Exception("Fetch failed: $e");
    }
  }
}
