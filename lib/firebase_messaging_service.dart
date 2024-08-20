/* import 'package:firebase_messaging/firebase_messaging.dart';

class FirebaseMessagingService {
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;

  FirebaseMessagingService() {
    _initialize();
  }

  void _initialize() {
    // Request permissions for iOS (optional)
    _firebaseMessaging.requestPermission();

    // Handle incoming messages when the app is in the foreground
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      if (message.notification != null) {
        // Play custom sound or handle notification
        print('Message also contained a notification: ${message.notification}');
        // Add your custom notification handling logic here
      }
    });

    // Handle what happens when the user taps on a notification
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      if (message.notification != null) {
        print('Notification clicked!');
        // Navigate to a specific page or handle the notification click event
      }
    });
  }
}
 */