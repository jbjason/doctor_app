import 'package:doctor_app/constants/home_const_get.dart';
import 'package:flutter/material.dart';

class VidCVideoButton extends StatelessWidget {
  const VidCVideoButton({required this.onVideo, super.key});
  final ValueNotifier onVideo;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onVideo.value = !onVideo.value,
      child: ValueListenableBuilder(
        valueListenable: onVideo,
        builder: (context, val, _) => getVideoIcon(
            val ? Icons.videocam_outlined : Icons.videocam_off_outlined),
      ),
    );
  }
}
