import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sobre'),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey.shade400,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('lib/images/dev.jpeg'),
            ),
            SizedBox(height: 16),
            Text(
              'João Silva',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Desenvolvedor de software',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey.shade600,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin maximus magna ac lectus vestibulum, eget dapibus velit fermentum. Nullam volutpat, quam vel facilisis bibendum, justo sapien ornare elit, sit amet luctus lacus ipsum eget turpis. Nam interdum, mi in ultrices pretium, eros est lobortis nisl, quis fermentum leo velit auctor orci. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Mauris finibus sapien ut nibh cursus ullamcorper. Sed id leo vel elit aliquam maximus. Nam eget sapien id est mollis pharetra. Maecenas eu mauris lacus. Donec non purus non urna ultricies malesuada. Vestibulum auctor odio ac nibh venenatis, eget iaculis nulla pharetra. Integer vel metus purus. Nam dictum metus nisl, nec dignissim lorem lobortis et.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey.shade800,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
