import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:video_player/video_player.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class BelajarMediaSlider extends StatelessWidget {
  const BelajarMediaSlider({super.key});

  static String routeName = 'belajar_media_slider';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Belajar Media SLider'),
      ),
      body: const Column(
        children: [
          SizedBox(
            height: 24,
          ),
          MediaSlider(),
          SizedBox(
            height: 25,
          ),
          YoutubeVideoPlayer(
            url: 'https://www.youtube.com/watch?v=YMx8Bbev6T4',
          ),
        ],
      ),
    );
  }
}

class YoutubeVideoPlayer extends StatefulWidget {
  const YoutubeVideoPlayer({
    super.key,
    required this.url,
  });

  final String url;

  @override
  State<YoutubeVideoPlayer> createState() => _YoutubeVideoPlayerState();
}

class _YoutubeVideoPlayerState extends State<YoutubeVideoPlayer> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    final videoId = YoutubePlayer.convertUrlToId(widget.url);
    _controller = YoutubePlayerController(
      initialVideoId: videoId!,
      flags: const YoutubePlayerFlags(
        controlsVisibleAtStart: true,
        autoPlay: false,
      ),
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: YoutubePlayer(
        controller: _controller,
        showVideoProgressIndicator: true,
        bottomActions: [
          CurrentPosition(),
          ProgressBar(isExpanded: true),
        ],
      ),
    );
  }
}

class VideoPlayerCard extends StatefulWidget {
  const VideoPlayerCard({
    super.key,
  });

  @override
  State<VideoPlayerCard> createState() => _VideoPlayerCardState();
}

class _VideoPlayerCardState extends State<VideoPlayerCard> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4')
      ..initialize().then((_) {
        _controller.play();
        _controller.setLooping(true);
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return _controller.value.isInitialized
        ? ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: VideoPlayer(_controller),
            ),
          )
        : const Center(child: CircularProgressIndicator());
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

class MediaSlider extends StatefulWidget {
  const MediaSlider({
    super.key,
  });

  @override
  State<MediaSlider> createState() => _MediaSliderState();
}

class _MediaSliderState extends State<MediaSlider> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        items: [
          Container(
            // color: Colors.amber,
            margin: const EdgeInsets.symmetric(horizontal: 10),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                image: DecorationImage(
                    image: AssetImage('assets/images/demo_fish_1.jpg'),
                    fit: BoxFit.cover)),
          ),
          Container(
            // color: Colors.amber,
            margin: const EdgeInsets.symmetric(horizontal: 10),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                image: DecorationImage(
                    image: AssetImage('assets/images/demo_fish_3.jpg'),
                    fit: BoxFit.cover)),
          ),
          const VideoPlayerCard(),
          Container(
            // color: Colors.amber,
            margin: const EdgeInsets.symmetric(horizontal: 10),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                image: DecorationImage(
                    image: AssetImage('assets/images/demo_fish_3.jpg'),
                    fit: BoxFit.cover)),
          ),
          const YoutubeVideoPlayer(
            url: 'https://youtu.be/0c23odyAUdg',
          ),
        ],
        options: CarouselOptions(
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlayCurve: Curves.fastOutSlowIn,
          viewportFraction: 0.8,
          scrollDirection: Axis.horizontal,
        ));
  }
}
