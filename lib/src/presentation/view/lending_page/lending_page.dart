import 'package:comgora_flutter_web_app/models/ContractVowUser.dart';
import 'package:comgora_flutter_web_app/models/ModelProvider.dart';
import 'package:comgora_flutter_web_app/src/domain/model/feature_type.dart';
import 'package:comgora_flutter_web_app/src/presentation/view/lending_page/widget/banner_widget.dart';
import 'package:comgora_flutter_web_app/src/presentation/view/lending_page/widget/menu_bar_widget.dart';
import 'package:comgora_flutter_web_app/src/presentation/view/shared_widget/footer_widget.dart';
import 'package:comgora_flutter_web_app/src/presentation/view/shared_widget/image_card_widget.dart';
import 'package:comgora_flutter_web_app/src/presentation/view_moldel/pool/pool_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../models/PoolType.dart';
import '../../../settings/settings_view.dart';
import '../../view_moldel/pool/pool_contract_viewmodel.dart';

final poolTypeProvider = StateProvider<PoolType>((ref) => PoolType.ALL);

class LendingPage extends ConsumerStatefulWidget {
  const LendingPage({super.key});

  @override
  ConsumerState<LendingPage> createState() => _LendingPageState();
}

class _LendingPageState extends ConsumerState<LendingPage>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            backgroundColor: Colors.grey.shade200,
            collapsedHeight: 100,
            flexibleSpace: MenuBarWidget(),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    children: [
                      const SizedBox(height: 30),
                      TabView(),
                    ],
                  ),
                ),
                BannerWidget(),
                FooterWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TabView extends ConsumerStatefulWidget {
  @override
  _TabViewState createState() => _TabViewState();
}

class _TabViewState extends ConsumerState<TabView>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: CategoryType.values.length,
      child: Column(
        children: [
          Container(
            height: 50,
            color: Colors.white,
            child: TabBar(
              labelColor: Colors.lightGreen,
              indicatorColor: Colors.lightGreen,
              unselectedLabelColor: Colors.grey,
              tabs: CategoryType.values.map((category) {
                return TabItem(
                    categoryToString(category), categoryToIconData(category));
              }).toList(),
              // tabs:[
              //   TabItem('All', Icons.category),
              //   TabItem('Clothes', Icons.shopping_bag),
              //   TabItem('Space', Icons.home_filled),
              //   TabItem('Furniture', Icons.weekend),
              //   TabItem('Fun', Icons.emoji_emotions),
              //   TabItem('Tool', Icons.construction),
              //   TabItem('Learn', Icons.school),
              //   TabItem('Pet', Icons.pets),
              //   TabItem('Transport', Icons.time_to_leave_rounded),
              //   TabItem('Wellness', Icons.spa),
              //   TabItem('Event', Icons.calendar_month),
              //   TabItem('Exercise', Icons.sports_gymnastics_rounded),
              // ],
              isScrollable: true,
            ),
          ),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
              alignment: Alignment.centerLeft,
              child: Text(
                'You may interest',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
          ConstrainedBox(
              constraints: BoxConstraints(maxHeight: 1000),
              child: TabBarView(
                  children: CategoryType.values.map((category) {
                // final poolType = ref.watch(poolTypeProvider);
                final poolType = ref.read(poolTypeProvider);

                return ItemCardGrid(category, poolType);
              }).toList())),
        ],
      ),
    );
  }
}

class TabItem extends StatelessWidget {
  final String title;
  final IconData icon;

  TabItem(this.title, this.icon);

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon),
          const SizedBox(width: 8),
          Text(title),
        ],
      ),
    );
  }
}

class ItemCardGrid extends ConsumerStatefulWidget {
  final CategoryType categoryType;
  final PoolType poolType;
  const ItemCardGrid(this.categoryType, this.poolType, {super.key});
  @override
  ConsumerState<ItemCardGrid> createState() => ItemCardGridState();
}

class ItemCardGridState extends ConsumerState<ItemCardGrid> {
  // @override
  // Widget build(BuildContext context) {
  //   return ref.watch(poolContractsStateNotifierProvider).maybeWhen(
  //       success: (contractVowUsers) {
  //         return Padding(
  //           padding: EdgeInsets.all(20),
  //           child: GridView.extent(
  //             maxCrossAxisExtent: 257.0, // Maximum width of each item
  //             crossAxisSpacing: 25.0, // Spacing between columns
  //             mainAxisSpacing: 10.0, // Spacing between rows
  //             // mainAxisExtent: 350,
  //             children: contractVowUsers
  //                 .map((contractVowUser) => ImageCardWidget(
  //                       contractVowUser: contractVowUser,
  //                     ))
  //                 .toList(),
  //           ),
  //         );
  //       },
  //       loading: () => const Center(
  //             child: CircularProgressIndicator(color: Colors.lightGreen),
  //           ),
  //       orElse: () => const Text('Else'),
  //       init: () => const Text('Init'),
  //       error: (e) => Text(e.toString()));
  // }
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 257.0, // Maximum width of each item
          crossAxisSpacing: 25.0, // Spacing between columns
          mainAxisSpacing: 10.0, // Spacing between rows
          mainAxisExtent: 350,
        ),
        itemCount: 10,
        itemBuilder: (context, index) {
          return ImageCardWidget();
        },
      ),
    );
  }
}
