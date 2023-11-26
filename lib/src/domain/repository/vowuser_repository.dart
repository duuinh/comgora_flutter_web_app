import 'dart:async';

import 'package:comgora_flutter_web_app/models/ModelProvider.dart';

abstract class VowUserRepository {
  Future<VowUser?> getCurrentVowUser();
  Future<void> createVowUser(
      String id,
      String email,
      String firstName,
      String lastName,
      String birthDate,
      String gender,
      String userIDName,
      String phone);

  Future<List<VowUser?>> getVowUserById(String id);
  Future<void> deleteVowUser(final String id);
  Future<List<FriendVowUser?>> getCurrentFriendVowUser();
  Future<List<FriendVowUser?>> getFriendVowUserByFriendId(String friendId);
  Future<List<ChatroomVowUser?>> getCurrentChatroomVowUser();
  Future<List<ChatroomVowUser?>> getChatroomVowUserByChatroomId(
      String chatroomId);
  Future<List<ContractVowUser?>> getCurrentContractVowUser();
  Future<List<ContractVowUser?>> getContractVowUserByContractId(
      String contractId);
  Future<List<ContractVowUser?>> getContractVowUserByVowUserId(
      String vowUserId);
  Future<List<ContractVowUser?>> getContractVowUserByContractIdAndVowUserId(
      String contractId, String vowUserId);
}
