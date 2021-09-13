import 'package:bala_indonesia/persentation/screens/blogs/widgets/action_blog.dart';
import 'package:flutter/material.dart';

class BlogsDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;

    return Material(
      color: Color(0xFF303030),
      borderRadius: BorderRadius.circular(6),
      child: Column(
        children: [
          thumbnail(txtTheme),
          Padding(
            padding: EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Excepteur sint occaeuiecat cupidatat Lorem ipsum dolor sit amet, consectetur adipisicing",
                  style: txtTheme.headline2,
                ),
                SizedBox(height: 22),
                ActionBlog(),
                Divider(),
                SizedBox(height: 20),
                Text(
                  'Culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste '
                  'natus error sit voluptartem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae '
                  'ab illo inventore veritatis et quasi ropeior architecto beatae vitae dicta sunt explicabo. Nemo eniem '
                  'ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores '
                  'eosep quiklop ratione voluptatem sequi nesciunt. Neque porro quisquam est, quepi dolorem ipsum quia '
                  'dolor srit amet, consectetur adipisci velit, seid quia non numquam eiuris modi tempora incidunt ut '
                  'labore et dolore magnam aliquam quaerat iope voluptatem.Lorem ipsum dolor sit amet, consectetur '
                  'adipisifwcing elit, sed do eiusmod tempor incididunt ut labore et dolore roipi magna aliqua. Ut enim '
                  'ad minim veeniam, quis nostruklad exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. '
                  'Duis aute irure dolor in reprehenderit in tufpoy voluptate velit esse cillum dolore eu fugiat nulla '
                  'parieratur. Excepteur sint occaecat cupidatat.',
                ),
                SizedBox(height: 22),
                TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.web, size: 16),
                  label: Text('www.kumparan.com/maggotvsother'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget thumbnail(TextTheme txtTheme) {
    return Stack(
      children: [
        Image.asset('images/beach.jpg', fit: BoxFit.cover),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Positioned(
            width: 260,
            bottom: -32,
            left: 0,
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('images/person.jpg'),
              ),
              title: Text(
                'Nick Carloss',
                maxLines: 2,
                style: txtTheme.headline6,
              ),
              subtitle: Text('Ilmu Kehutanan'),
              tileColor: Color(0xFF555555),
              shape: StadiumBorder(),
              isThreeLine: true,
            ),
          ),
        ),
      ],
    );
  }
}
