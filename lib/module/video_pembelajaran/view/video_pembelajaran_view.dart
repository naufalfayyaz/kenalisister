import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kenali_sister/core.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoPembelajaranView extends StatefulWidget {
  const VideoPembelajaranView({Key? key}) : super(key: key);

  Widget build(context, VideoPembelajaranController controller) {
    controller.view = this;
    return YoutubePlayerBuilder(
      onExitFullScreen: () {
        SystemChrome.setPreferredOrientations(DeviceOrientation.values);
      },
      player: YoutubePlayer(
        controller: controller.youtubePlayerController,
        showVideoProgressIndicator: true,
        progressIndicatorColor: Colors.blueAccent,
        topActions: <Widget>[
          const SizedBox(width: 8.0),
          Expanded(
            child: Text(
              controller.youtubePlayerController.metadata.title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
        ],
        onReady: () {
          controller.isPlayerReady = true;
        },
      ),
      builder: (context, player) => Scaffold(
        appBar: AppBar(
          backgroundColor: primaryColor,
          leading: const BackButton(
            color: neutralWhite,
          ),
          actions: [
            FullScreenButton(
              controller: controller.youtubePlayerController,
              color: neutralWhite,
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: player,
              ),
              const SizedBox(
                height: 16.0,
              ),
              const ColumnText(
                  title: "Lorem Ipsum",
                  subtitle:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ac sollicitudin nisi. Nam accumsan interdum fringilla. Suspendisse potenti. In non sem eu lectus gravida commodo at in lectus. Ut ipsum turpis, pellentesque sit amet velit ut, lacinia hendrerit magna. Sed volutpat consectetur felis id rutrum. Nulla vitae porttitor velit. Fusce ut pharetra dolor, ac malesuada justo."),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<VideoPembelajaranView> createState() => VideoPembelajaranController();
}
