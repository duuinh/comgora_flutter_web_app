import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade200,
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(50),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'We inspire and help you locally build micro businesses from ordinarily to extraordinarily.',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    ListTile(
                      leading: SvgPicture.asset(
                        'assets/icons/landing_page/icon_1.svg',
                        height: 50,
                        width: 50,
                      ),
                      title: const Text(
                          'Create customized sharing economy services'),
                    ),
                    const SizedBox(height: 10),
                    ListTile(
                      leading: SvgPicture.asset(
                        'assets/icons/landing_page/icon_2.svg',
                        height: 50,
                        width: 50,
                      ),
                      title: const Text(
                          'Earn more platform’s rewards by higher quality'),
                    ),
                    const SizedBox(height: 10),
                    ListTile(
                      leading: SvgPicture.asset(
                        'assets/icons/landing_page/icon_3.svg',
                        height: 50,
                        width: 50,
                      ),
                      title: const Text(
                          'AI contract generator for all of services'),
                    ),
                  ]),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(50),
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
