/*import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:multifast/core/config.dart';

@pragma('vm:entry-point')
Future<void> _firebaseMessaginBackgroundHandler(RemoteMessage message) async {
  await FirebaseService.instance.setupFlutterNotifications();
  await FirebaseService.instance.showNotification(message);
}

class FirebaseService {
  FirebaseService._();
  static final FirebaseService instance = FirebaseService._();
  final _messagin = FirebaseMessaging.instance;
  final _localNotifications = FlutterLocalNotificationsPlugin();
  bool _isFlutterLocalNotificationsInitialized = false;

  Future<void> initializate() async {
    FirebaseMessaging.onBackgroundMessage(_firebaseMessaginBackgroundHandler);
    await _requestPermission();
    await _setupMessageHandlers();
    final token = await _messagin.getToken();
    Config.printDebug(token.toString());
    subscribreToTopic('12345696321');
  }

  Future<void> _requestPermission() async {
    final settings = await _messagin.requestPermission(
      alert: true,
      badge: true,
      sound: true,
      provisional: false,
      announcement: false,
      carPlay: false,
      criticalAlert: false,
    );
    Config.talker.info(settings.authorizationStatus);
  }

  Future<void> setupFlutterNotifications() async {
    if (_isFlutterLocalNotificationsInitialized) {
      return;
    }
    const channel = AndroidNotificationChannel('high_importance_channel', 'High Importance Notifications',
        description: 'This channel is used for important notifications', importance: Importance.high);
    await _localNotifications
        .resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()!
        .createNotificationChannel(channel);

    const initializationSettingsAndroid = AndroidInitializationSettings('@mipmap/ic_launcher');

    final initializationSettings = InitializationSettings(android: initializationSettingsAndroid);

    await _localNotifications.initialize(
      initializationSettings,
      onDidReceiveBackgroundNotificationResponse: (details) {
        Config.printDebug('xddd topic');
      },
    );

    _isFlutterLocalNotificationsInitialized = true;
  }

  Future<void> showNotification(RemoteMessage message) async {
    RemoteNotification? notification = message.notification;
    AndroidNotification? android = message.notification!.android;
    if (notification != null && android != null) {
      await _localNotifications.show(
          notification.hashCode,
          notification.title,
          notification.body,
          NotificationDetails(
              android: AndroidNotificationDetails('high_importance_channel', 'High Importance Notifications',
                  importance: Importance.high, priority: Priority.high, icon: '@mipmap/ic_launcher')),
          payload: message.data.toString());
    }
  }

  Future<void> _setupMessageHandlers() async {
    // foregroud message
    FirebaseMessaging.onMessage.listen((message) {
      showNotification(message);
    });

    // background message
    FirebaseMessaging.onMessageOpenedApp.listen(_handleBackgroundMessage);

    // opened app
    final initialMessage = await _messagin.getInitialMessage();
    if (initialMessage != null) {
      _handleBackgroundMessage(initialMessage);
    }
  }

  void _handleBackgroundMessage(RemoteMessage message) {
    if (message.data['type'] == 'chat') {
      //open chat
    }
  }

  Future<void> subscribreToTopic(String topic) async {
    await FirebaseMessaging.instance.subscribeToTopic(topic);
    Config.printDebug(topic);
  }
}
*/