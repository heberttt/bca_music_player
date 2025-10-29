import 'package:bca_music_player/model/search_result.dart';
import 'package:bca_music_player/view/widget/custom_search_bar.dart';
import 'package:bca_music_player/view/widget/search_result_widget.dart';
import 'package:flutter/material.dart';

class MusicPage extends StatefulWidget {
  const MusicPage({super.key});

  @override
  State<MusicPage> createState() => _MusicPageState();
}

class _MusicPageState extends State<MusicPage> {
  List<SearchResult> _searchResult = [
    SearchResult(
      trackName: "Ariana Grande - October 12, 2024",
      artistName: "Saturday Night Live",
      thumbnailUrl:
          "https://is1-ssl.mzstatic.com/image/thumb/Video221/v4/01/e4/9f/01e49f1c-4ad2-128d-ad4b-4136c4e8c629/mzl.gygwujih.png/100x100bb.jpg",
      collectionName: "SNL: 2024/25: Season Sketches",
      songUrl:
          "https://video-ssl.itunes.apple.com/itunes-assets/Video211/v4/02/f5/51/02f551aa-ab7f-beca-8a65-84a366e137ca/mzvf_17379185868185891251.640x480.h264lc.U.p.m4v",
    ),
    SearchResult(
      trackName: "Ariana Grande - October 12, 2024",
      artistName: "Saturday Night Live",
      thumbnailUrl:
          "https://is1-ssl.mzstatic.com/image/thumb/Video221/v4/01/e4/9f/01e49f1c-4ad2-128d-ad4b-4136c4e8c629/mzl.gygwujih.png/100x100bb.jpg",
      collectionName: "SNL: 2024/25: Season Sketches",
      songUrl:
          "https://video-ssl.itunes.apple.com/itunes-assets/Video211/v4/02/f5/51/02f551aa-ab7f-beca-8a65-84a366e137ca/mzvf_17379185868185891251.640x480.h264lc.U.p.m4v",
    ),
    SearchResult(
      trackName: "Ariana Grande - October 12, 2024",
      artistName: "Saturday Night Live",
      thumbnailUrl:
          "https://is1-ssl.mzstatic.com/image/thumb/Video221/v4/01/e4/9f/01e49f1c-4ad2-128d-ad4b-4136c4e8c629/mzl.gygwujih.png/100x100bb.jpg",
      collectionName: "SNL: 2024/25: Season Sketches",
      songUrl:
          "https://video-ssl.itunes.apple.com/itunes-assets/Video211/v4/02/f5/51/02f551aa-ab7f-beca-8a65-84a366e137ca/mzvf_17379185868185891251.640x480.h264lc.U.p.m4v",
    ),
    SearchResult(
      trackName: "Ariana Grande - October 12, 2024",
      artistName: "Saturday Night Live",
      thumbnailUrl:
          "https://is1-ssl.mzstatic.com/image/thumb/Video221/v4/01/e4/9f/01e49f1c-4ad2-128d-ad4b-4136c4e8c629/mzl.gygwujih.png/100x100bb.jpg",
      collectionName: "SNL: 2024/25: Season Sketches",
      songUrl:
          "https://video-ssl.itunes.apple.com/itunes-assets/Video211/v4/02/f5/51/02f551aa-ab7f-beca-8a65-84a366e137ca/mzvf_17379185868185891251.640x480.h264lc.U.p.m4v",
    ),
    SearchResult(
      trackName: "Ariana Grande - October 12, 2024",
      artistName: "Saturday Night Live",
      thumbnailUrl:
          "https://is1-ssl.mzstatic.com/image/thumb/Video221/v4/01/e4/9f/01e49f1c-4ad2-128d-ad4b-4136c4e8c629/mzl.gygwujih.png/100x100bb.jpg",
      collectionName: "SNL: 2024/25: Season Sketches",
      songUrl:
          "https://video-ssl.itunes.apple.com/itunes-assets/Video211/v4/02/f5/51/02f551aa-ab7f-beca-8a65-84a366e137ca/mzvf_17379185868185891251.640x480.h264lc.U.p.m4v",
    ),
    SearchResult(
      trackName: "Ariana Grande - October 12, 2024",
      artistName: "Saturday Night Live",
      thumbnailUrl:
          "https://is1-ssl.mzstatic.com/image/thumb/Video221/v4/01/e4/9f/01e49f1c-4ad2-128d-ad4b-4136c4e8c629/mzl.gygwujih.png/100x100bb.jpg",
      collectionName: "SNL: 2024/25: Season Sketches",
      songUrl:
          "https://video-ssl.itunes.apple.com/itunes-assets/Video211/v4/02/f5/51/02f551aa-ab7f-beca-8a65-84a366e137ca/mzvf_17379185868185891251.640x480.h264lc.U.p.m4v",
    ),
    SearchResult(
      trackName: "Ariana Grande - October 12, 2024",
      artistName: "Saturday Night Live",
      thumbnailUrl:
          "https://is1-ssl.mzstatic.com/image/thumb/Video221/v4/01/e4/9f/01e49f1c-4ad2-128d-ad4b-4136c4e8c629/mzl.gygwujih.png/100x100bb.jpg",
      collectionName: "SNL: 2024/25: Season Sketches",
      songUrl:
          "https://video-ssl.itunes.apple.com/itunes-assets/Video211/v4/02/f5/51/02f551aa-ab7f-beca-8a65-84a366e137ca/mzvf_17379185868185891251.640x480.h264lc.U.p.m4v",
    ),
    SearchResult(
      trackName: "Ariana Grande - October 12, 2024",
      artistName: "Saturday Night Live",
      thumbnailUrl:
          "https://is1-ssl.mzstatic.com/image/thumb/Video221/v4/01/e4/9f/01e49f1c-4ad2-128d-ad4b-4136c4e8c629/mzl.gygwujih.png/100x100bb.jpg",
      collectionName: "SNL: 2024/25: Season Sketches",
      songUrl:
          "https://video-ssl.itunes.apple.com/itunes-assets/Video211/v4/02/f5/51/02f551aa-ab7f-beca-8a65-84a366e137ca/mzvf_17379185868185891251.640x480.h264lc.U.p.m4v",
    ),
  ];

  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 10),
            CustomSearchBar(onSearch: (search) {}, isLoading: false),
            SizedBox(height: 20),
            SearchResultListView(searchResult: _searchResult, isLoading: false),
          ],
        ),
      ),
    );
  }
}

class SearchResultListView extends StatefulWidget {
  const SearchResultListView({
    super.key,
    required this.searchResult,
    required this.isLoading,
  });

  final List<SearchResult> searchResult;
  final bool isLoading;

  @override
  State<SearchResultListView> createState() => _SearchResultListViewState();
}

class _SearchResultListViewState extends State<SearchResultListView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: widget.isLoading
          ? const Center(child: CircularProgressIndicator())
          : widget.searchResult.isEmpty
          ? Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.search,
                    size: 100,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                  const SizedBox(height: 10),
                  const Text("Search music now!"),
                ],
              ),
            )
          : ListView.builder(
              itemCount: widget.searchResult.length,
              itemBuilder: (context, index) {
                final result = widget.searchResult[index];
                return Center(child: SearchResultWidget(searchResult: result));
              },
            ),
    );
  }
}
