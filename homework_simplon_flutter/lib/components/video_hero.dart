import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';



class VideoHero extends StatefulWidget {
  final String videoPath;

  const VideoHero({
    super.key,
    required this.videoPath,
  });

  @override
  State<VideoHero> createState() => _VideoHeroState();
}

class _VideoHeroState extends State<VideoHero> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _initializeVideoController();
  }

  void _initializeVideoController() {
    _controller = VideoPlayerController.asset(widget.videoPath)
      ..initialize().then((_) {
        print("Video initialization successful");
        setState(() {
          _controller.setLooping(true);
        });
      })
      ..addListener(() {})
      ..setVolume(1.0)
      ..play();
  }

  @override
  Widget build(BuildContext context) {
    return _controller.value.isInitialized
        ? AspectRatio(
            aspectRatio: _controller.value.aspectRatio,
            child: VideoPlayer(_controller),
          )
        : const CircularProgressIndicator();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
