import 'package:bca_music_player/model/search_result.dart';
import 'package:flutter/material.dart';

class SearchResultWidget extends StatelessWidget {
  final SearchResult searchResult;
  final bool isPlaying;

  const SearchResultWidget({
    super.key,
    required this.searchResult,
    this.isPlaying = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Colors.black,
            width: 0.4,
          ),
        ),
      ),
      height: 100,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 80,
              width: 80,
              color: Colors.white,
              child: Image.network(searchResult.thumbnailUrl, fit: BoxFit.cover),
            ),
            const SizedBox(width: 15),

            SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    searchResult.trackName,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 14,
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Opacity(
                    opacity: 0.7,
                    child: Text(
                      searchResult.artistName,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 11,
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                    ),
                  ),
                  const SizedBox(height: 2),
                  Opacity(
                    opacity: 0.7,
                    child: Text(
                      searchResult.collectionName,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 11,
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(width: 35),

            if (isPlaying)
              const Icon(
                Icons.graphic_eq,
                color: Colors.green,
                size: 22,
              ),
          ],
        ),
      ),
    );
  }
}
