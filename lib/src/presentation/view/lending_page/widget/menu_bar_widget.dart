import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MenuBarWidget extends StatelessWidget {
  const MenuBarWidget({super.key});

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
        PoolSelectDropdownButton(),
        Container(
          height: 50,
          width: 300,
          padding: const EdgeInsets.all(5),
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
                    icon: const Icon(
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
          icon: const Icon(Icons.settings_outlined),
          onPressed: () {
            // context.go(SettingsView.routeName);
          },
        ),
      ]),
    );
  }
}

class PoolSelectDropdownButton extends StatefulWidget {
  @override
  _DropdownButtonState createState() => _DropdownButtonState();
}

class _DropdownButtonState extends State<PoolSelectDropdownButton> {
  String selectedValue = 'All Pool'; // Initial value
  final Map<String, IconData> valueIconMap = {
    'All Pool': Icons.public,
    'Private': Icons.lock,
  };

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        DropdownButton(
          value: selectedValue,
          icon:
              const Icon(Icons.arrow_drop_down), // Icon for the dropdown button
          onChanged: (String? newValue) {
            setState(() {
              selectedValue = newValue!;
            });
          },
          underline: Container(),
          items: <String>['All Pool', 'Private']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.lightGreen,
                ),
                child: Icon(valueIconMap[value], color: Colors.black, size: 25),
              ),
            );
          }).toList(),
        ),
        const SizedBox(width: 20),
        Text(selectedValue)
      ],
    );
  }
}
