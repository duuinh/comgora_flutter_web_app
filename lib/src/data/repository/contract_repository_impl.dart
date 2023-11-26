import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:comgora_flutter_web_app/models/ModelProvider.dart';
import 'package:comgora_flutter_web_app/src/domain/repository/contract_repository.dart';

class ContractRepositoryImpl implements ContractRepository {
  @override
  Future<void> createContract(
      Contract contract, VowUser provider, List<VowUser> reciever) async {
    final contractProvider =
        ContractVowUser(contract: contract, vowUser: provider);
    final List<ContractVowUser> contractRecievers = reciever.isNotEmpty
        ? reciever.map((e) {
            return ContractVowUser(contract: contract, vowUser: e);
          }).toList()
        : [];
    try {
      await Amplify.API.mutate(request: ModelMutations.create(contract));
      await Amplify.API
          .mutate(request: ModelMutations.create(contractProvider));
      if (contractRecievers.isNotEmpty) {
        contractRecievers.map((e) async =>
            await Amplify.API.mutate(request: ModelMutations.create(e)));
      }
    } on ApiException catch (e) {
      safePrint('CreateContract failed: $e');
    }
  }

  @override
  Future<List<Contract?>> getContractsByVowUserId(String vowUserId) async {
    try {
      final request = ModelQueries.list(
        ContractVowUser.classType,
        where: ContractVowUser.VOWUSER.eq(vowUserId),
      );
      final response = await Amplify.API.query(request: request).response;
      final contractAWSUsers = response.data?.items ?? <ContractVowUser?>[];
      return contractAWSUsers
          .map((contractAWSUser) => contractAWSUser?.contract)
          .toList();
    } on DataStoreException catch (e) {
      safePrint('GetContractsByAWSUserId failed: $e');
      return [];
    }
  }

  @override
  Future<List<Contract?>> getAllPubicContracts() async {
    try {
      final request = ModelQueries.list(
        Contract.classType,
        where: Contract.ISPRIVATE.eq(false),
      );
      final response = await Amplify.API.query(request: request).response;
      final contracts = response.data?.items;
      if (contracts == null) {
        safePrint('errors: ${response.errors}');
        return const [];
      }
      return contracts;
    } on ApiException catch (e) {
      safePrint('GetContractsByAWSUserId failed: $e');
      return [];
    }
  }

  @override
  Future<List<Contract?>> getPubicContractsByCategoryType(
      CategoryType categoryType) async {
    try {
      final request = ModelQueries.list(
        Contract.classType,
        where: Contract.ISPRIVATE
            .eq(false)
            .and(Contract.CATEGORY.eq(categoryType)),
      );
      final response = await Amplify.API.query(request: request).response;
      final contracts = response.data?.items;
      if (contracts == null) {
        safePrint('errors: ${response.errors}');
        return const [];
      }
      return contracts;
    } on ApiException catch (e) {
      safePrint('GetContractsByAWSUserId failed: $e');
      return [];
    }
  }

  @override
  Future<List<Contract?>> getPubicContractsByPoolTypeAndCategoryType(
      PoolType poolType, CategoryType categoryType) async {
    try {
      final request = ModelQueries.list(
        Contract.classType,
        where: determineFilter(poolType, categoryType),
      );
      final response = await Amplify.API.query(request: request).response;
      final contracts = response.data?.items;
      if (contracts == null) {
        safePrint('errors: ${response.errors}');
        return const [];
      }
      return contracts;
    } on ApiException catch (e) {
      safePrint('GetContractsByAWSUserId failed: $e');
      return [];
    }
  }

  QueryPredicate<Model>? determineFilter(
      PoolType poolType, CategoryType categoryType) {
    if (poolType == PoolType.ALL && categoryType == CategoryType.ALL) {
      return Contract.ISPRIVATE.eq(false);
    } else if (poolType == PoolType.ALL) {
      return Contract.ISPRIVATE
          .eq(false)
          .and(Contract.CATEGORY.eq(categoryType));
    } else if (categoryType == CategoryType.ALL) {
      return Contract.ISPRIVATE
          .eq(false)
          .and(Contract.POOLTYPE.eq(poolType))
          .and(Contract.CATEGORY.eq(categoryType));
    } else {
      return Contract.ISPRIVATE
          .eq(false)
          .and(Contract.POOLTYPE.eq(poolType))
          .and(Contract.CATEGORY.eq(categoryType));
    }
  }
}
