import 'package:comgora_flutter_web_app/models/ModelProvider.dart';

abstract class ContractRepository {
  Future<void> createContract(
      Contract contract, VowUser provider, List<VowUser> reciever);
  Future<List<Contract?>> getContractsByVowUserId(String awsUserId);
  Future<List<Contract?>> getAllPubicContracts();
  Future<List<Contract?>> getPubicContractsByCategoryType(
      CategoryType categoryType);
  Future<List<Contract?>> getPubicContractsByPoolTypeAndCategoryType(
      PoolType poolType, CategoryType categoryType);
}
