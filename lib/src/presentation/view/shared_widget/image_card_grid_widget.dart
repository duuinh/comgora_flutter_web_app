import 'package:comgora_flutter_web_app/src/presentation/view/shared_widget/image_card_widget.dart';
import 'package:comgora_flutter_web_app/src/presentation/view_moldel/pool/pool_contract_viewmodel.dart';
import 'package:comgora_flutter_web_app/src/presentation/view_moldel/pool/pool_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../models/ModelProvider.dart';

class ItemCardGridWidget extends ConsumerStatefulWidget {
  final CategoryType categoryType;
  final PoolType poolType;
  const ItemCardGridWidget(this.categoryType, this.poolType, {super.key});
  @override
  ConsumerState<ItemCardGridWidget> createState() => _ItemCardGridWidgetState();
}

class _ItemCardGridWidgetState extends ConsumerState<ItemCardGridWidget> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    Future(() {
      ref
          .read(poolViewModelProvider(
              PoolCategoryType(widget.poolType, widget.categoryType)))
          .init();
    });
  }

  @override
  Widget build(BuildContext context) {
    return ref.watch(poolContractsStateNotifierProvider).maybeWhen(
        success: (contractVowUsers) {
          return Padding(
            padding: EdgeInsets.all(20),
            child: GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 257.0, // Maximum width of each item
                crossAxisSpacing: 25.0, // Spacing between columns
                mainAxisSpacing: 10.0, // Spacing between rows
                mainAxisExtent: 350,
              ),
              itemCount: contractVowUsers.length,
              itemBuilder: (context, index) {
                return ImageCardWidget(
                    contractVowUser: contractVowUsers[index]);
              },
            ),
          );
        },
        loading: () => const Center(
              child: CircularProgressIndicator(color: Colors.lightGreen),
            ),
        orElse: () => const Text('Else'),
        init: () => const Text('Init'),
        error: (e) => Text(e.toString()));
  }
}
