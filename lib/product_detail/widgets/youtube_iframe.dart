// import 'package:configurable_expansion_tile_null_safety/configurable_expansion_tile_null_safety.dart';
// import 'package:flutter/material.dart';
// import 'package:torri_cantine_app/app/common/utilities/tc_typography.dart';
// import 'package:youtube_player_iframe/youtube_player_iframe.dart';
//
// class YoutubePlayerItem extends StatefulWidget {
//   final String url;
//   final double height;
//   const YoutubePlayerItem({super.key, required this.url, required this.height});
//
//   @override
//   State<YoutubePlayerItem> createState() => _YoutubePlayerItemState();
// }
//
// class _YoutubePlayerItemState extends State<YoutubePlayerItem> {
//   YoutubePlayerController? _controller;
//   String videoId = "";
//
//   @override
//   void initState() {
//     bool autoPlay = false;
//     if (mounted) {
//       autoPlay = false;
//       videoId = widget.url.split('?v=').last;
//
//       WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
//         _controller = YoutubePlayerController(
//             params: const YoutubePlayerParams(
//           showControls: true,
//           mute: false,
//           showFullscreenButton: true,
//           loop: false,
//         ))
//           ..onInit = () async {
//             if (autoPlay) {
//               await _controller!
//                   .loadVideoById(videoId: videoId, startSeconds: 0);
//             } else {
//               await _controller!
//                   .cueVideoById(videoId: videoId, startSeconds: 0);
//             }
//           }
//           ..onFullscreenChange = (isFullScreen) {};
//         setState(() {});
//       });
//     }
//     super.initState();
//   }
//
//   @override
//   void dispose() {
//     _controller!.close();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return ConfigurableExpansionTile(
//       initiallyExpanded: true,
//       header: (isExpanded, iconTurns, heightFactor, controller) => SizedBox(
//         width: MediaQuery.of(context).size.width,
//         child: Padding(
//           padding: const EdgeInsets.only(right: 20.0),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Padding(
//                 padding: EdgeInsets.only(left: 10.0),
//                 child:
//                     Text("VIDEO", style: TCTypography.of(context).text_16_bold),
//               ),
//               Icon(Icons.add)
//             ],
//           ),
//         ),
//       ),
//       childrenBody: Padding(
//           padding: const EdgeInsets.all(20.0),
//           child: _controller == null
//               //todo Add loader
//               ? Center(child: SizedBox())
//               : YoutubePlayerScaffold(
//                   autoFullScreen: false,
//                   aspectRatio: 16 / 9,
//                   controller: _controller!,
//                   builder: (context, player) {
//                     return SizedBox(
//                       width: MediaQuery.of(context).size.width,
//                       height: widget.height,
//                       child: player,
//                     );
//                   },
//                 )),
//     );
//   }
// }
