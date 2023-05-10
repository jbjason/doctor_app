import 'package:doctor_app/widgets/video_call_widgets/vidc_mute_button.dart';
import 'package:doctor_app/widgets/video_call_widgets/vidc_video_button.dart';
import 'package:flutter/material.dart';

class VidCButtons extends StatelessWidget {
  const VidCButtons({super.key, required this.onVideo, required this.size});
  final Size size;
  final ValueNotifier onVideo;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: -30,
      right: -30,
      height: size.height * .12,
      child: DecoratedBox(
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black87,
              spreadRadius: 3,
              blurRadius: 60,
              offset: Offset(0, 15),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(width: 50),
            const VidCMuteButton(),
            const VidCRedButton(),
            VidCVideoButton(onVideo: onVideo),
            const SizedBox(width: 50),
          ],
        ),
      ),
    );
  }
}

class VidCRedButton extends StatelessWidget {
  const VidCRedButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pop(context),
      child: Container(
        height: 65,
        width: 65,
        padding: const EdgeInsets.all(4),
        decoration:
            const BoxDecoration(shape: BoxShape.circle, color: Colors.white12),
        child: Container(
          padding: const EdgeInsets.all(3),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white24,
          ),
          child: Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.redAccent,
            ),
            child: const Icon(Icons.phone, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
