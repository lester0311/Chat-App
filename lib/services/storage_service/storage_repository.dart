// @dart=2.9
import 'dart:io';

import 'package:chatapp/models/message.dart';
import 'package:chatapp/models/user.dart';
import 'package:chatapp/models/user_presentation.dart';
import 'package:flutter/foundation.dart';

abstract class StorageRepository {
  Stream<List<UserPresentation>> fetchFirstUsers(
      {@required String userId, @required int maxLength});

  Stream<List<Message>> fetchFirstMessages(
      {@required String userId,
      @required String friendId,
      @required int maxLength});

  Future<List<Message>> fetchNextMessages(
      {@required String userId,
      @required String friendId,
      @required int maxLength,
      @required int firstMessagesLength});

  Future<void> sendMessage(
      {@required String message,
      @required String userId,
      @required String friendId});

  Future<User> fetchProfileUser([String userID]);
  Future<void> saveProfileUser(User user);
  Future<void> markMessageSeen(String userId, String friendId);
  Future<User> updateProfileNameAndImage(
      {@required String userId,
      @required String name,
      File photo,
      String imgUrl});
  Future<List<UserPresentation>> searchByName(
      {@required String userId, @required String name});
}
