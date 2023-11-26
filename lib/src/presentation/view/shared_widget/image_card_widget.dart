import 'package:comgora_flutter_web_app/models/ModelProvider.dart';
import 'package:comgora_flutter_web_app/src/domain/model/feature_type.dart';
import 'package:flutter/material.dart';

class ImageCardWidget extends StatelessWidget {
  const ImageCardWidget({
    super.key,
    required this.contractVowUser,
  });

  final ContractVowUser contractVowUser;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            Stack(
              alignment: Alignment.topLeft,
              children: [
                Image.network(
                  'https://dummyimage.com/257x257/97bf7e/ffffff.jpg',
                  fit: BoxFit.cover,
                  width: double
                      .infinity, // Use double.infinity to make the image fill the width
                  height: 257,
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  margin: const EdgeInsets.all(10),
                  child: Icon(
                    categoryToIconData(contractVowUser.contract.category),
                    color: Colors.black,
                    size: 30,
                  ),
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.all(8),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ),
          ],
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
                    contractVowUser.contract.title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    contractVowUser.contract.location?.formattedAddress ??
                        'Unknown location',
                    style: TextStyle(fontSize: 14),
                  ),
                  Text(
                      '${contractVowUser.contract.price} ${contractVowUser.contract.currency}',
                      style: TextStyle(fontSize: 18)),
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
