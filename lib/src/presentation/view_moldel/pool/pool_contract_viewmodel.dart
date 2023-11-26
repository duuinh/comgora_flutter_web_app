import 'package:aws_common/aws_common.dart';
import 'package:comgora_flutter_web_app/src/presentation/view_moldel/pool/pool_viewmodel.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:comgora_flutter_web_app/src/domain/domain_module.dart';
import 'package:comgora_flutter_web_app/src/domain/usecase/get_public_contract_by_pool_and_cat_usecase.dart';
import 'package:comgora_flutter_web_app/models/ModelProvider.dart';

import '../../../state/state.dart';

final poolContractsStateNotifierProvider =
    Provider.autoDispose<State<List<ContractVowUser>>>((ref) {
  final poolContractsState = ref.watch(poolContractsViewModelProvider);

  return poolContractsState.when(
    init: () => const State.init(),
    success: (contractVowUsers) => State.success(contractVowUsers),
    loading: () => const State.loading(),
    error: (exception) => State.error(exception),
  );
});

final poolContractsViewModelProvider = AutoDisposeStateNotifierProvider<
    PoolContractsViewModel, State<List<ContractVowUser>>>((ref) {
  return PoolContractsViewModel(
    ref.watch(getPubicContractsByPoolAndCatProvider),
  );
});

class PoolContractsViewModel
    extends StateNotifier<State<List<ContractVowUser>>> {
  final GetPubicContractVowUsersByPoolAndCatUseCase
      _getPubicContractsByPoolAndCatUseCase;

  PoolContractsViewModel(this._getPubicContractsByPoolAndCatUseCase)
      : super(const State.init());

  @override
  void dispose() {
    safePrint("PoolContractsViewModel dispose");
    super.dispose();
  }

  /// Get public contracts by pool and category type.
  getPubicContractsByPoolAndCat(PoolCategoryType poolCategoryType) async {
    try {
      state = const State.loading();
      final contractVowUsers = await _getPubicContractsByPoolAndCatUseCase
          .execute(poolCategoryType.poolType, poolCategoryType.categoryType);
      safePrint(poolCategoryType.poolType);
      safePrint(poolCategoryType.categoryType);
      safePrint('contractVowUsers: $contractVowUsers');
      state = State.success(contractVowUsers);
    } on Exception catch (e) {
      state = State.error(e);
    }
  }
}
