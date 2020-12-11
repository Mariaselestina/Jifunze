
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:jifunze/constants/routes.dart';



import 'package:video_player/video_player.dart';

class BeginingPage extends StatefulWidget {
  @override
  _BeginingPageState createState() => _BeginingPageState();
}

class _BeginingPageState extends State<BeginingPage> {
  VideoPlayerController _videoPlayerController;
  Future<void> _initializeVideoPlayerFuture;

  
  final double kHeight = 40.0;

  final double kWeight = 65.0;

  final double tSize = 11.0;

  @override
  void initState() {
    _videoPlayerController = VideoPlayerController.asset("assets/video/privateparts.m4v");
    _initializeVideoPlayerFuture = _videoPlayerController.initialize(); 
   _videoPlayerController.setLooping(true);
   _videoPlayerController.setVolume(1.0);
   super.initState();
  }
@override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          FutureBuilder(
              future: _initializeVideoPlayerFuture,
            builder: (context, snapshot ){
              if(snapshot.connectionState == ConnectionState.done){
                return AspectRatio(
                  aspectRatio: _videoPlayerController.value.aspectRatio,
                  child: VideoPlayer(_videoPlayerController),
                  );
              }else{
                return Center(
                  child: CircularProgressIndicator(),
                );
              }

            },        
                 
            ),
              Align(
          alignment: Alignment.topLeft,
          child: IconButton(
            icon: Icon(Icons.home, color: Colors.orangeAccent, size: 70),
            onPressed: () {
              Navigator.pushNamed(context, levelsPage);
            },
          ),
        ),
             Positioned(
          bottom: MediaQuery.of(context).size.height / 16,
          right: MediaQuery.of(context).size.width / 1.1,
          child: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.red,
              size: 60,
            ),
            onPressed: () {
              Navigator.pushNamed(context, levelsPage);
            },
          ),
        ),
         
        Positioned(
          bottom: MediaQuery.of(context).size.height / 16,
          right: MediaQuery.of(context).size.width / 14,
          child: IconButton(
            icon: Icon(
              Icons.arrow_forward_ios,
              color: Colors.red,
              size: 60,
            ),
            onPressed: () {
              Navigator.pushNamed(context, bodyPartsB);
              onPlayAudio2();
              
             
            },
          ),
        ),
        ],
      ),
      floatingActionButton: Align(
        alignment: Alignment(0, 0.9),
              child: FloatingActionButton(
          elevation: 1,
          
          
            onPressed: (){
              setState((){
                if(_videoPlayerController.value.isPlaying) {
                  _videoPlayerController.pause();

                }else{
                  _videoPlayerController.play();
                }
              });
            }, 
            child: Icon(_videoPlayerController.value.isPlaying ? Icons.pause : Icons.play_arrow),
          ),
      ),
      //   Container(
      //     height: MediaQuery.of(context).size.height,
      //     width: MediaQuery.of(context).size.width,
      //     child: Image.asset(
      //       'assets/images/environment/introduction.PNG',
      //       fit: BoxFit.fill,
      //     ),
      //     // child: SvgPicture.asset(
      //     //   'assets/images/environment/introduction.svg',
      //     //   fit: BoxFit.fill,
      //     // ),
      //   ),
   
      //   Positioned(
      //     bottom: MediaQuery.of(context).size.height / 1.6,
      //     right: MediaQuery.of(context).size.width / 1.7,
      //     child: Container(
      //       height: 100,
      //       width: 90,
      //       child: Image.asset(
      //         'assets/images/gifimages/butterfly.gif',
      //         fit: BoxFit.cover,
      //       ),
      //     ),
      //   ),
      
      
      
     );
  }
  void onPlayAudio2() async {
    AssetsAudioPlayer assetsAudioPlayer = AssetsAudioPlayer();
    assetsAudioPlayer.open(
      Audio("assets/audio/story/showsafeparts.mp3"),
    );
  }
}
