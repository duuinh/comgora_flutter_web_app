import 'package:flutter/material.dart';

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
