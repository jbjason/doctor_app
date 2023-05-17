import 'package:doctor_app/screens/doc_details_screen.dart';
import 'package:doctor_app/screens/doctors_screen.dart';
import 'package:doctor_app/screens/home_screen.dart';
import 'package:doctor_app/screens/message_screen.dart';
import 'package:doctor_app/screens/p_dashboard_screen.dart';
import 'package:doctor_app/screens/profile_screen.dart';
import 'package:doctor_app/screens/video_call_screen.dart';
import 'package:flutter/material.dart';

class Routes {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case HomeScreen.routeName:
        return MaterialPageRoute(builder: (context) => const HomeScreen());

      case DocDetailsScreen.routeName:
        return MaterialPageRoute(
            builder: (context) => const DocDetailsScreen());

      case VideoCallScreen.routeName:
        return MaterialPageRoute(builder: (context) => const VideoCallScreen());

      case MessageScreen.routeName:
        return MaterialPageRoute(builder: (context) => const MessageScreen());

      case DoctorsScreen.routeName:
        return MaterialPageRoute(builder: (context) => const DoctorsScreen());

      case ProfileScreen.routeName:
        return MaterialPageRoute(builder: (context) => const ProfileScreen());

      case PHomeScreen.routeName:
        return MaterialPageRoute(builder: (context) => const PHomeScreen());

      default:
        null;
    }
    return null;
  }
}
