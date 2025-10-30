import 'package:bca_music_player/model/search_result.dart';
import 'package:bca_music_player/service/music_service.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class MusicViewModel with ChangeNotifier {
  final AudioPlayer _player = AudioPlayer();
  bool isLoading = false;
  bool isError = false;
  bool isPlaying = false;
  Duration? _totalDuration;

  SearchResult? loadingMusic;
  int currentIndex = 0;

  SearchResult? selectedMusic;
  List<SearchResult> searchResults = [];

  double currentProgress = 0.0;

  final MusicService _musicService = MusicService();

  MusicViewModel() {
    _player.onPositionChanged.listen((pos) {
      if (_totalDuration != null && _totalDuration!.inMilliseconds > 0) {
        currentProgress = pos.inMilliseconds / _totalDuration!.inMilliseconds;
        notifyListeners();
      }
    });

    _player.onDurationChanged.listen((duration) {
      _totalDuration = duration;
    });

    _player.onPlayerComplete.listen((_) {
      _player.stop();
      currentProgress = 0.0;
      isPlaying = false;
      notifyListeners();
    });
  }

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

  Future<void> selectMusic(SearchResult music) async {
    loadingMusic = music;
    isPlaying = false;
    notifyListeners();

    selectedMusic = music;

    await _player.stop();
    await _player.play(UrlSource(music.songUrl));

    loadingMusic = null;
    isPlaying = true;
    notifyListeners();
  }

  Future<void> togglePlayPause() async {
    if (selectedMusic == null) return;

    if (isPlaying) {
      await _player.pause();
    } else {
      await _player.resume();
    }
    isPlaying = !isPlaying;
    notifyListeners();
  }

  void playNext() {
    if (currentIndex < searchResults.length - 1) {
      selectMusic(searchResults[++currentIndex]);
    }
  }

  void playPrevious() {
    if (currentIndex > 0) {
      selectMusic(searchResults[--currentIndex]);
    }
  }

  void seekTo(double value) async {
    final duration = await _player.getDuration();
    if (duration != null) {
      final position = Duration(
        milliseconds: (duration.inMilliseconds * value).toInt(),
      );
      await _player.seek(position);
    }
  }
}
