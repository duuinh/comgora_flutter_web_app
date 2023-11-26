import 'dart:core';
import 'dart:core';
import 'package:comgora_flutter_web_app/models/ModelProvider.dart';
import 'package:comgora_flutter_web_app/src/domain/model/feature_type.dart';
import 'package:comgora_flutter_web_app/src/presentation/view/lending_page/widget/banner_widget.dart';
import 'package:comgora_flutter_web_app/src/presentation/view/shared_widget/image_card_grid_widget.dart';
import 'package:comgora_flutter_web_app/src/presentation/view/lending_page/widget/menu_bar_widget.dart';
import 'package:comgora_flutter_web_app/src/presentation/view/shared_widget/footer_widget.dart';
import 'package:comgora_flutter_web_app/src/presentation/view/shared_widget/image_card_widget.dart';
import 'package:comgora_flutter_web_app/src/presentation/view_moldel/pool/pool_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
                final poolType = ref.watch(poolTypeProvider);
                return ItemCardGridWidget(category, poolType);
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
