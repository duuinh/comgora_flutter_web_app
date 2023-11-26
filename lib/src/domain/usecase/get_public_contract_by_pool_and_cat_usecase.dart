import 'dart:core';
import 'package:aws_common/aws_common.dart';
import 'package:comgora_flutter_web_app/src/domain/repository/contract_repository.dart';
import 'package:comgora_flutter_web_app/src/domain/repository/vowuser_repository.dart';
import '../../../models/ModelProvider.dart';

abstract class GetPubicContractVowUsersByPoolAndCatUseCase {
  Future<List<ContractVowUser>> execute(
      PoolType poolType, CategoryType categoryType);
}

class GetPubicContractVowUsersByPoolAndCatUseCaseImpl
    implements GetPubicContractVowUsersByPoolAndCatUseCase {
  final ContractRepository _contractrepository;
  final VowUserRepository _vowUserRepository;

  const GetPubicContractVowUsersByPoolAndCatUseCaseImpl(
      this._contractrepository, this._vowUserRepository);

  @override
  Future<List<ContractVowUser>> execute(
      PoolType poolType, CategoryType categoryType) async {
    final contracts = await _contractrepository
        .getPubicContractsByPoolTypeAndCategoryType(poolType, categoryType);
    safePrint('contracts: $contracts');
    final contractVowUsers = await Future.wait(contracts.map((contract) async {
      final contractVowUser =
          await _vowUserRepository.getContractVowUserByContractIdAndVowUserId(
              contract!.id, contract.senderId);
      return contractVowUser.isNotEmpty ? contractVowUser.first : null;
    }));
    final List<ContractVowUser> nonNullContractVowUsers =
        contractVowUsers.fold([], (list, contractVowUser) {
      if (contractVowUser != null) {
        list.add(contractVowUser);
      }
      return list;
    });
    return nonNullContractVowUsers;
  }
}
