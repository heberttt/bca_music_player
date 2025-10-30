import 'package:flutter/material.dart';

class BottomMusicBar extends StatelessWidget {
  final bool isPlaying;
  final double progress;
  final int currentIndex;
  final int totalSongs;
  final VoidCallback onPlayPause;
  final VoidCallback onNext;
  final VoidCallback onPrevious;
  final ValueChanged<double> onSeek;

  const BottomMusicBar({
    super.key,
    required this.isPlaying,
    required this.progress,
    required this.currentIndex,
    required this.totalSongs,
    required this.onPlayPause,
    required this.onNext,
    required this.onPrevious,
    required this.onSeek,
  });

  

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceContainerHighest,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.5),
            blurRadius: 8,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Slider(
            value: progress,
            onChanged: onSeek,
            min: 0,
            max: 1,
            activeColor: Theme.of(context).colorScheme.primary,
            inactiveColor: Colors.grey.shade400,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: const Icon(Icons.skip_previous_rounded, size: 36),
                color: currentIndex > 0
                    ? Theme.of(context).colorScheme.primary
                    : Colors.grey,
                onPressed: currentIndex > 0 ? onPrevious : null,
              ),
              IconButton(
                icon: Icon(
                  isPlaying
                      ? Icons.pause_circle_filled_rounded
                      : Icons.play_circle_fill_rounded,
                  size: 50,
                ),
                color: Theme.of(context).colorScheme.primary,
                onPressed: onPlayPause,
              ),
              IconButton(
                icon: const Icon(Icons.skip_next_rounded, size: 36),
                color: currentIndex < totalSongs - 1
                    ? Theme.of(context).colorScheme.primary
                    : Colors.grey,
                onPressed: currentIndex < totalSongs - 1 ? onNext : null,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
