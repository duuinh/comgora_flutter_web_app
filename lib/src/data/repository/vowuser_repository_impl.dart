import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:comgora_flutter_web_app/models/ModelProvider.dart';

import '../../domain/repository/vowuser_repository.dart';

class VowUserRepositoryImpl implements VowUserRepository {
  @override
  Future<VowUser?> getCurrentVowUser() async {
    final userId = await Amplify.Auth.fetchUserAttributes().then((value) =>
        value
            .where((element) =>
                element.userAttributeKey ==
                AuthUserAttributeKey.preferredUsername)
            .first
            .value);
    final userList = await getVowUserById(userId);
    return userList.isNotEmpty
        ? userList.first
        : VowUser(id: "Invalid AWSUser");
  }

  @override
  Future<List<VowUser?>> getVowUserById(String id) async {
    try {
      final request =
          ModelQueries.list(VowUser.classType, where: VowUser.ID.eq(id));
      final response = await Amplify.API.query(request: request).response;
      final vowUsers = response.data?.items;
      if (vowUsers == null) {
        safePrint('errors: ${response.errors}');
        return const [];
      }
      return vowUsers;
    } on ApiException catch (e) {
      safePrint('Query failed: $e');
      return const [];
    }
  }

  @override
  Future<void> createVowUser(
      String id,
      String email,
      String firstName,
      String lastName,
      String birthDate,
      String gender,
      String userIDName,
      String phone) async {
    final vowUser = VowUser(
        id: id,
        email: email,
        firstName: firstName,
        lastName: lastName,
        birthDate: birthDate,
        gender: gender,
        userIdName: userIDName,
        phone: phone);
    try {
      await Amplify.API.mutate(request: ModelMutations.create(vowUser));
    } on ApiException catch (e) {
      safePrint('Create failed: $e');
    }
  }

  @override
  Future<void> deleteVowUser(String id) {
    // TODO: implement deleteAWSUser
    throw UnimplementedError();
  }

  @override
  Future<List<FriendVowUser?>> getCurrentFriendVowUser() async {
    final userId = await Amplify.Auth.fetchUserAttributes().then((value) =>
        value
            .where((element) =>
                element.userAttributeKey ==
                AuthUserAttributeKey.preferredUsername)
            .first
            .value);

    try {
      final request = ModelQueries.list(FriendVowUser.classType,
          where: FriendVowUser.VOWUSER.eq(userId));
      final response = await Amplify.API.query(request: request).response;
      final friendVowUsers = response.data?.items;
      if (friendVowUsers == null) {
        safePrint('errors: ${response.errors}');
        return const [];
      }
      return friendVowUsers;
    } on ApiException catch (e) {
      safePrint('Query failed: $e');
      return const [];
    }
  }

  @override
  Future<List<FriendVowUser?>> getFriendVowUserByFriendId(
      String friendId) async {
    try {
      final request = ModelQueries.list(FriendVowUser.classType,
          where: FriendVowUser.FRIEND.eq(friendId));
      final response = await Amplify.API.query(request: request).response;
      final friendVowUsers = response.data?.items;
      if (friendVowUsers == null) {
        safePrint('errors: ${response.errors}');
        return const [];
      }
      return friendVowUsers;
    } on ApiException catch (e) {
      safePrint('Query failed: $e');
      return const [];
    }
  }

  @override
  Future<List<ChatroomVowUser?>> getCurrentChatroomVowUser() async {
    final userId = await Amplify.Auth.fetchUserAttributes().then((value) =>
        value
            .where((element) =>
                element.userAttributeKey ==
                AuthUserAttributeKey.preferredUsername)
            .first
            .value);
    try {
      final request = ModelQueries.list(
        ChatroomVowUser.classType,
        where: ChatroomVowUser.VOWUSER.eq(userId),
      );
      final response = await Amplify.API.query(request: request).response;
      final chatroomVowUsers = response.data?.items;
      if (chatroomVowUsers == null) {
        safePrint('errors: ${response.errors}');
        return const [];
      }
      return chatroomVowUsers;
    } on ApiException catch (e) {
      safePrint('Query failed: $e');
      return const [];
    }
  }

  @override
  Future<List<ChatroomVowUser?>> getChatroomVowUserByChatroomId(
      String chatroomId) async {
    try {
      final request = ModelQueries.list(
        ChatroomVowUser.classType,
        where: ChatroomVowUser.CHATROOM.eq(chatroomId),
      );
      final response = await Amplify.API.query(request: request).response;
      final chatroomVowUsers = response.data?.items;
      if (chatroomVowUsers == null) {
        safePrint('errors: ${response.errors}');
        return const [];
      }
      return chatroomVowUsers;
    } on ApiException catch (e) {
      safePrint('Query failed: $e');
      return const [];
    }
  }

  @override
  Future<List<ContractVowUser?>> getCurrentContractVowUser() async {
    final userId = await Amplify.Auth.fetchUserAttributes().then((value) =>
        value
            .where((element) =>
                element.userAttributeKey ==
                AuthUserAttributeKey.preferredUsername)
            .first
            .value);
    try {
      final request = ModelQueries.list(
        ContractVowUser.classType,
        where: ContractVowUser.VOWUSER.eq(userId),
      );
      final response = await Amplify.API.query(request: request).response;
      final contractVowUsers = response.data?.items;
      if (contractVowUsers == null) {
        safePrint('errors: ${response.errors}');
        return const [];
      }
      return contractVowUsers;
    } on ApiException catch (e) {
      safePrint('Query failed: $e');
      return const [];
    }
  }

  @override
  Future<List<ContractVowUser?>> getContractVowUserByContractId(
      String contractId) async {
    try {
      final request = ModelQueries.list(
        ContractVowUser.classType,
        where: ContractVowUser.CONTRACT.eq(contractId),
      );
      final response = await Amplify.API.query(request: request).response;
      final contractVowUsers = response.data?.items;
      if (contractVowUsers == null) {
        safePrint('errors: ${response.errors}');
        return const [];
      }
      return contractVowUsers;
    } on ApiException catch (e) {
      safePrint('Query failed: $e');
      return const [];
    }
  }

  @override
  Future<List<ContractVowUser?>> getContractVowUserByVowUserId(
      String vowUserId) async {
    try {
      final request = ModelQueries.list(
        ContractVowUser.classType,
        where: ContractVowUser.VOWUSER.eq(vowUserId),
      );
      final response = await Amplify.API.query(request: request).response;
      final contractVowUsers = response.data?.items;
      if (contractVowUsers == null) {
        safePrint('errors: ${response.errors}');
        return const [];
      }
      return contractVowUsers;
    } on ApiException catch (e) {
      safePrint('Query failed: $e');
      return const [];
    }
  }

  @override
  Future<List<ContractVowUser?>> getContractVowUserByContractIdAndVowUserId(
      String contractId, String vowUserId) async {
    try {
      final request = ModelQueries.list(
        ContractVowUser.classType,
        where: ContractVowUser.CONTRACT
            .eq(contractId)
            .and(ContractVowUser.VOWUSER.eq(vowUserId)),
      );
      final response = await Amplify.API.query(request: request).response;
      final contractVowUsers = response.data?.items;
      if (contractVowUsers == null) {
        safePrint('errors: ${response.errors}');
        return const [];
      }
      return contractVowUsers;
    } on ApiException catch (e) {
      safePrint('Query failed: $e');
      return const [];
    }
  }
}
