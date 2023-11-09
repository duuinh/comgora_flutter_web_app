import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../settings/settings_view.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 12, // Set the number of tabs as needed
        child: Scaffold(
          body: CustomScrollView(
            slivers: [
              SliverAppBar(
                pinned: true,
                backgroundColor: Colors.grey.shade200,
                collapsedHeight: 100,
                flexibleSpace: MenuBar(),
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        children: [
                          CategoryTabBar(),
                          Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 20),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'You may interest',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              )),
                          ItemCardGrid(),
                        ],
                      ),
                    ),
                    Banner(),
                    Footer(),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

class MenuBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        SvgPicture.asset(
          'assets/icons/comgora_logo.svg',
          height: 65,
          width: 65,
        ),
        const Text(
          'comgora',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextButton(
          onPressed: () {},
          child: const Text('Post Ads'),
        ),
        Container(
          height: 50,
          width: 300,
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(25.0)),
          child: TextField(
            decoration: InputDecoration(
              labelText: "Search",
              border: InputBorder.none,
              suffixIcon: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.lightGreen,
                ),
                child: IconButton(
                    onPressed: () {
                      // search
                    },
                    icon: Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 15,
                    )),
              ),
            ),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: const Text('Earn & Learn'),
        ),
        TextButton(
          onPressed: () {},
          child: const Text('Build Your Store'),
        ),
        TextButton(
          onPressed: () {},
          child: const Text('Join'),
        ),
        IconButton(
          icon: const Icon(Icons.settings),
          onPressed: () {
            // context.go(SettingsView.routeName);
          },
        ),
      ]),
    );
  }
}

class CategoryTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: Colors.white,
      child: TabBar(
        labelColor: Colors.lightGreen,
        indicatorColor: Colors.lightGreen,
        unselectedLabelColor: Colors.grey,
        tabs: [
          TabItem('All', Icons.category),
          TabItem('Clothes', Icons.category),
          TabItem('Space', Icons.category),
          TabItem('Furniture', Icons.category),
          TabItem('Fun', Icons.category),
          TabItem('Tool', Icons.category),
          TabItem('Learn', Icons.category),
          TabItem('Pet', Icons.category),
          TabItem('Transport', Icons.category),
          TabItem('Wellness', Icons.category),
          TabItem('Event', Icons.category),
          TabItem('Exercise', Icons.category),
        ],
        isScrollable: true,
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

class ItemCardGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 257.0, // Maximum width of each item
          crossAxisSpacing: 10.0, // Spacing between columns
          mainAxisSpacing: 10.0, // Spacing between rows
          mainAxisExtent: 360,
        ),
        itemCount: 10,
        itemBuilder: (context, index) {
          return ImageCard();
        },
      ),
    );
  }
}

class ImageCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/images/flutter_logo.png',
          fit: BoxFit.cover,
          width: double
              .infinity, // Use double.infinity to make the image fill the width
          height: 257,
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Card Title',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    'Location',
                    style: TextStyle(fontSize: 14),
                  ),
                  Text('Price', style: TextStyle(fontSize: 18)),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    size: 22,
                  ),
                  Text('4.8', style: TextStyle(fontSize: 12))
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}

class Banner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade200,
      padding: EdgeInsets.all(16),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(50),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'We inspire and help you locally build micro businesses from ordinarily to extraordinarily.',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    ListTile(
                      leading: SvgPicture.asset(
                        'assets/icons/landing_page/icon_1.svg',
                        height: 50,
                        width: 50,
                      ),
                      title: Text('Create customized sharing economy services'),
                    ),
                    SizedBox(height: 10),
                    ListTile(
                      leading: SvgPicture.asset(
                        'assets/icons/landing_page/icon_2.svg',
                        height: 50,
                        width: 50,
                      ),
                      title: Text(
                          'Earn more platform’s rewards by higher quality'),
                    ),
                    SizedBox(height: 10),
                    ListTile(
                      leading: SvgPicture.asset(
                        'assets/icons/landing_page/icon_3.svg',
                        height: 50,
                        width: 50,
                      ),
                      title: Text('AI contract generator for all of services'),
                    ),
                  ]),
            ),
          ),
          Container(
            padding: EdgeInsets.all(50),
            child: SvgPicture.asset(
              'assets/icons/landing_page/logo.svg',
              height: 300,
            ),
          ),
        ],
      ),
    );
  }
}

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightGreen,
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          Text(
            'Let’s connect the recourse from global citizens',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          Spacer(),
          Text(
            'comgora',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          )
        ],
      ),
    );
  }
}
