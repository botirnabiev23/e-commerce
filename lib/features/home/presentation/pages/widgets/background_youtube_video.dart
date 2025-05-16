import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class BackgroundYoutubeVideo extends StatefulWidget {
  final String youtubeUrl;

  const BackgroundYoutubeVideo({super.key, required this.youtubeUrl});

  @override
  State<BackgroundYoutubeVideo> createState() => _BackgroundYoutubeVideoState();
}

class _BackgroundYoutubeVideoState extends State<BackgroundYoutubeVideo> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _initializeController(widget.youtubeUrl);
  }

  void _initializeController(String url) {
    final videoId = YoutubePlayer.convertUrlToId(url)!;
    _controller = YoutubePlayerController(
      initialVideoId: videoId,
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        loop: true,
        mute: true,
        hideControls: true,
        disableDragSeek: true,
        hideThumbnail: true,
      ),
    );
  }

  @override
  void didUpdateWidget(covariant BackgroundYoutubeVideo oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.youtubeUrl != widget.youtubeUrl) {
      final newVideoId = YoutubePlayer.convertUrlToId(widget.youtubeUrl);
      if (newVideoId != null && newVideoId != _controller.initialVideoId) {
        _controller.load(newVideoId);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayer(
      controller: _controller,
      showVideoProgressIndicator: false,
      progressColors: const ProgressBarColors(
        playedColor: Colors.transparent,
        handleColor: Colors.transparent,
      ),
      bottomActions: const [],
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
