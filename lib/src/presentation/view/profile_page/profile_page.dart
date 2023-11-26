import 'package:comgora_flutter_web_app/models/ModelProvider.dart';
import 'package:comgora_flutter_web_app/src/presentation/view/lending_page/widget/menu_bar_widget.dart';
import 'package:comgora_flutter_web_app/src/presentation/view/profile_page/widget/profile_card_widget.dart';
import 'package:comgora_flutter_web_app/src/presentation/view/profile_page/widget/side_menu_widget.dart';
import 'package:comgora_flutter_web_app/src/presentation/view/shared_widget/footer_widget.dart';
import 'package:comgora_flutter_web_app/src/presentation/view/shared_widget/image_card_grid_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final poolTypeProvider = StateProvider<PoolType>((ref) => PoolType.ALL);

class ProfilePage extends ConsumerStatefulWidget {
  const ProfilePage({super.key});

  @override
  ConsumerState<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends ConsumerState<ProfilePage>
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
                Column(
                  children: [
                    Row(
                      children: [
                        SideMenuWidget(),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 200.0),
                            child: Column(
                              children: [
                                ProfileCardWidget(),
                                const SizedBox(height: 30),
                                TabView(),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    FooterWidget(),
                  ],
                ),
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
      length: 3,
      child: Column(
        children: [
          Container(
            height: 50,
            color: Colors.white,
            child: TabBar(
              labelColor: Colors.lightGreen,
              indicatorColor: Colors.lightGreen,
              unselectedLabelColor: Colors.grey,
              tabs: [
                TabItem('Store'),
                TabItem('Info'),
                TabItem('Like'),
              ],
              isScrollable: true,
            ),
          ),
          ConstrainedBox(
              constraints: BoxConstraints(maxHeight: 1000),
              child: TabBarView(children: [
                ItemCardGridWidget(CategoryType.ALL, PoolType.ALL),
                ItemCardGridWidget(CategoryType.ALL, PoolType.ALL),
                ItemCardGridWidget(CategoryType.ALL, PoolType.ALL)
              ])),
        ],
      ),
    );
  }
}

class TabItem extends StatelessWidget {
  final String title;

  TabItem(this.title);

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(width: 8),
          Text(title),
        ],
      ),
    );
  }
}
