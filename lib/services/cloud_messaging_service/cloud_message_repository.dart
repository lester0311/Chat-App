// @dart=2.9
import 'package:chatapp/models/message.dart';

abstract class CloudMessageRepository {
  Future<String> getToken();
  void configure({
    MessageHandler onAppMessage,
    MessageHandler onAppLaunch,
    MessageHandler onAppResume,
  });
}

typedef void MessageHandler(String senderId);
