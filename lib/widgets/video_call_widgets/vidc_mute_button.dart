import 'package:doctor_app/constants/home_const_get.dart';
import 'package:flutter/material.dart';

class VidCMuteButton extends StatefulWidget {
  const VidCMuteButton({super.key});
  @override
  State<VidCMuteButton> createState() => _VidCMuteButtonState();
}

class _VidCMuteButtonState extends State<VidCMuteButton> {
  bool isMute = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() => isMute = !isMute),
      child: getVideoIcon(
          isMute ? Icons.mic_none_outlined : Icons.mic_off_outlined),
    );
  }
}
