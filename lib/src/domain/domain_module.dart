//Contract
import 'package:comgora_flutter_web_app/src/domain/usecase/get_public_contract_by_pool_and_cat_usecase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/data_module.dart';

final getPubicContractsByPoolAndCatProvider =
    Provider<GetPubicContractVowUsersByPoolAndCatUseCase>((ref) =>
        GetPubicContractVowUsersByPoolAndCatUseCaseImpl(
            ref.watch(contractProvider), ref.watch(vowUserProvider)));
