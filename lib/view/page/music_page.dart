import 'package:bca_music_player/model/search_result.dart';
import 'package:bca_music_player/view/widget/bottom_music_bar.dart';
import 'package:bca_music_player/view/widget/custom_search_bar.dart';
import 'package:bca_music_player/view/widget/search_result_widget.dart';
import 'package:bca_music_player/view_model/music_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MusicPage extends StatefulWidget {
  const MusicPage({super.key});

  @override
  State<MusicPage> createState() => _MusicPageState();
}

class _MusicPageState extends State<MusicPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Consumer<MusicViewModel>(
          builder: (context, viewModel, _) {
            return Column(
              children: [
                const SizedBox(height: 10),
                CustomSearchBar(
                  onSearch: (search) => viewModel.fetchMusicData(search),
                  isLoading: viewModel.isLoading,
                ),
                const SizedBox(height: 20),
                SearchResultListView(
                  searchResult: viewModel.searchResults,
                  isLoading: viewModel.isLoading,
                ),
              ],
            );
          },
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Consumer<MusicViewModel>(
          builder: (context, viewModel, _) {
            final music = viewModel.selectedMusic;
            if (music == null) return const SizedBox.shrink();

            return BottomMusicBar(
              isPlaying: viewModel.isPlaying,
              progress: viewModel.currentProgress,
              currentIndex: viewModel.currentIndex,
              totalSongs: viewModel.searchResults.length,
              onPlayPause: viewModel.togglePlayPause,
              onNext: viewModel.playNext,
              onPrevious: viewModel.playPrevious,
              onSeek: viewModel.seekTo,
            );
          },
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
                final viewModel = Provider.of<MusicViewModel>(context);

                final isPlaying = viewModel.selectedMusic == result;
                final isLoading = viewModel.loadingMusic == result;

                return Center(
                  child: GestureDetector(
                    onTap: () {
                      viewModel.selectMusic(result);
                    },
                    child: SearchResultWidget(
                      searchResult: result,
                      isPlaying: isPlaying,
                      isLoading: isLoading,
                    ),
                  ),
                );
              },
            ),
    );
  }
}
