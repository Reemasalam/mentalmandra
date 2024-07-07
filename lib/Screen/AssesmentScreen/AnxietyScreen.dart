import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class AnxietyScreen extends StatefulWidget {
  @override
  _AnxietyScreenState createState() => _AnxietyScreenState();
}

class _AnxietyScreenState extends State<AnxietyScreen> {
  late VideoPlayerController _controller1;
  late VideoPlayerController _controller2;
  late VideoPlayerController _controller3;
  late Future<void> _initializeVideoPlayerFuture1;
  late Future<void> _initializeVideoPlayerFuture2;
  late Future<void> _initializeVideoPlayerFuture3;

  @override
  void initState() {
    super.initState();
    _controller1 = VideoPlayerController.asset('assets/anxiety1.mp4');
    _controller2 = VideoPlayerController.asset('assets/anxiety2.mp4');
    _controller3 = VideoPlayerController.asset('assets/anxiety3.mp4');
    _initializeVideoPlayerFuture1 = _controller1.initialize();
    _initializeVideoPlayerFuture2 = _controller2.initialize();
    _initializeVideoPlayerFuture3 = _controller3.initialize();
  }

  @override
  void dispose() {
    _controller1.dispose();
    _controller2.dispose();
    _controller3.dispose();
    super.dispose();
  }

  Widget buildCard(VideoPlayerController controller, Future<void> initializeVideoPlayerFuture, String title) {
    return FutureBuilder(
      future: initializeVideoPlayerFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                ListTile(
                  title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                AspectRatio(
                  aspectRatio: controller.value.aspectRatio,
                  child: VideoPlayer(controller),
                ),
                VideoProgressIndicator(controller, allowScrubbing: true),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (controller.value.isPlaying) {
                        controller.pause();
                      } else {
                        controller.play();
                      }
                    });
                  },
                  child: Icon(
                    controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
                  ),
                ),
              ],
            ),
          );
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mind yoga for Anxiety Relief'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            buildCard(_controller1, _initializeVideoPlayerFuture1, 'Pranayama'),
            SizedBox(height: 20),
            buildCard(_controller2, _initializeVideoPlayerFuture2, 'Downward Facing Dog Yoga'),
            SizedBox(height: 20),
            buildCard(_controller3, _initializeVideoPlayerFuture3, 'Wings Stretch'),
          ],
        ),
      ),
    );
  }
}
