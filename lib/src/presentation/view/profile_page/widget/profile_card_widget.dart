import 'package:flutter/material.dart';

class ProfileCardWidget extends StatelessWidget {
  const ProfileCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ProfileImageWidget(
          imageUrl: 'https://dummyimage.com/257x257/555555/ffffff.jpg',
          name: 'John Doe',
        ),
        Column(
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('comgora.com/jason1234/',
                          style: TextStyle(fontWeight: FontWeight.bold)),
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
                        style: TextStyle(fontWeight: FontWeight.bold),
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
                        style: TextStyle(fontWeight: FontWeight.bold),
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
                        style: TextStyle(fontWeight: FontWeight.bold),
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
