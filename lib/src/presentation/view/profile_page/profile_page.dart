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
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 250.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    ProfileImageWidget(
                                      imageUrl:
                                          'https://dummyimage.com/257x257/555555/ffffff.jpg',
                                      name: 'John Doe',
                                    ),
                                    Column(
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 50),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text('comgora.com/jason1234/',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                  Text(
                                                      'Description your service, why are professional how is your experience.')
                                                ],
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                Column(children: [
                                                  Row(
                                                    children: [
                                                      Text('Deals'),
                                                    ],
                                                  ),
                                                  const SizedBox(height: 4),
                                                  Text(
                                                    '120',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ]),
                                                SizedBox(width: 20),
                                                Column(children: [
                                                  Row(
                                                    children: [
                                                      Text('Review'),
                                                    ],
                                                  ),
                                                  const SizedBox(height: 4),
                                                  Text(
                                                    '4.8',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ]),
                                                SizedBox(width: 20),
                                                Column(children: [
                                                  Row(
                                                    children: [
                                                      Text('Followers'),
                                                    ],
                                                  ),
                                                  const SizedBox(height: 4),
                                                  Text(
                                                    '120',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ])
                                              ],
                                            )
                                          ],
                                        ),
                                        RowWithButtons(),
                                      ],
                                    )
                                  ],
                                ),
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

class RowWithButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.white,
                  side: BorderSide(color: Colors.grey.shade800),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  )),
              child: Text('Edit'),
            ),
            SizedBox(width: 8),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightGreen,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: Text('Create Product'),
            ),
          ],
        ),
      ],
    );
  }
}

class ProfileImageWidget extends StatelessWidget {
  final String imageUrl;
  final String name;

  ProfileImageWidget({
    required this.imageUrl,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          alignment: Alignment.bottomLeft,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(imageUrl),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.verified,
                color: Colors.lightGreen,
                size: 32,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Text(
          name,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}

class SideMenuWidget extends StatelessWidget {
  const SideMenuWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade100,
      width: 400,
      height: 1300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 50),
          TextMenuItem(
            text: 'Order History',
            icon: Icons.history,
            onTap: () {},
          ),
          TextMenuItem(
            text: 'Contact',
            icon: Icons.contact_page_rounded,
            onTap: () {},
          ),
          TextMenuItem(
            text: 'Plans',
            icon: Icons.verified,
            onTap: () {},
          ),
          TextMenuItem(
            text: 'Show Profile',
            icon: Icons.account_circle,
            onTap: () {},
          ),
          TextMenuItem(
            text: 'ID & Signature',
            icon: Icons.contact_emergency_outlined,
            onTap: () {},
          ),
          TextMenuItem(
            text: 'Deposit Protection & Law',
            icon: Icons.topic_outlined,
            onTap: () {},
          ),
          TextMenuItem(
            text: 'Coupon',
            icon: Icons.discount_outlined,
            onTap: () {},
          ),
          TextMenuItem(
            text: 'Help',
            icon: Icons.help_center_outlined,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

class TextMenuItem extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback onTap;

  TextMenuItem({required this.text, required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      style: TextButton.styleFrom(
        foregroundColor: Colors.grey.shade900,
        padding: EdgeInsets.all(16),
        alignment: Alignment.centerLeft,
      ),
      child: Row(
        children: [
          SizedBox(width: 16),
          Icon(icon),
          SizedBox(width: 16),
          Text(
            text,
            style: TextStyle(fontSize: 18),
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
                ItemCardGrid(CategoryType.ALL, PoolType.ALL),
                ItemCardGrid(CategoryType.ALL, PoolType.ALL),
                ItemCardGrid(CategoryType.ALL, PoolType.ALL)
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

class ItemCardGrid extends ConsumerStatefulWidget {
  final CategoryType categoryType;
  final PoolType poolType;
  const ItemCardGrid(this.categoryType, this.poolType, {super.key});
  @override
  ConsumerState<ItemCardGrid> createState() => ItemCardGridState();
}

class ItemCardGridState extends ConsumerState<ItemCardGrid> {
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
