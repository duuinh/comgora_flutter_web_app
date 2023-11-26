import 'package:comgora_flutter_web_app/models/ModelProvider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'pool_contract_viewmodel.dart';

class PoolCategoryType {
  PoolType poolType;
  CategoryType categoryType;
  PoolCategoryType(this.poolType, this.categoryType);
}

final poolViewModelProvider = Provider.autoDispose
    .family<PoolViewModel, PoolCategoryType>((ref, poolCategoryType) {
  return PoolViewModel(
    poolCategoryType,
    ref.watch(poolContractsViewModelProvider.notifier),
  );
});

class PoolViewModel {
  final PoolCategoryType poolCategoryType;
  final PoolContractsViewModel poolContractsViewModel;
  PoolViewModel(this.poolCategoryType, this.poolContractsViewModel) : super();

  init() async {
    await poolContractsViewModel
        .getPubicContractsByPoolAndCat(poolCategoryType);
  }
}
