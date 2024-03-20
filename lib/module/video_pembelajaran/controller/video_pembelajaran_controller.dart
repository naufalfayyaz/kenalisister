import 'package:flutter/material.dart';
import 'package:kenali_sister/core.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import '../view/video_pembelajaran_view.dart';

class VideoPembelajaranController extends State<VideoPembelajaranView> {
  static late VideoPembelajaranController instance;
  late VideoPembelajaranView view;

  late YoutubePlayerController youtubePlayerController;
  bool isPlayerReady = false;
  late PlayerState playerState;
  late YoutubeMetaData videoMetaData;

  void listener() {
    if (isPlayerReady &&
        mounted &&
        !youtubePlayerController.value.isFullScreen) {
      setState(() {
        playerState = youtubePlayerController.value.playerState;
        videoMetaData = youtubePlayerController.metadata;
      });
    }
  }

  @override
  void deactivate() {
    youtubePlayerController.pause();
    super.deactivate();
  }

  @override
  void initState() {
    youtubePlayerController = YoutubePlayerController(
      initialVideoId: "GqYj_f9gVqM",
      flags: const YoutubePlayerFlags(
        mute: false,
        autoPlay: false,
        disableDragSeek: false,
        loop: false,
        isLive: false,
        forceHD: false,
        enableCaption: true,
      ),
    )..addListener(listener);
    instance = this;
    super.initState();
  }

  @override
  void dispose() {
    youtubePlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
