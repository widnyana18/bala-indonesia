import 'package:bala_indonesia/persentation/utils/responsiveLayout.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class StakeholderSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final large = ResponsiveLayout.isLargeScreen(context);
    final theme = Theme.of(context);

    return Container(
      height: MediaQuery.of(context).size.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flex(
            direction: large ? Axis.horizontal : Axis.vertical,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment:
                large ? CrossAxisAlignment.center : CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Our Team.',
                    style: theme.textTheme.headline1,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'BALA BIOTECH INDONESIA',
                    style: TextStyle(
                      color: theme.colorScheme.secondary,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Text(
                '''Lorem ipsum dolor sit amet, consectetur'''
                '''adipisicing elit, sed do eiusmod tempor'''
                '''incididunt ut ero labore et dolore.''',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ],
          ),
          SizedBox(height: 40),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemExtent: 325,
              itemCount: 5,
              itemBuilder: (ctx, idx) => employeeCard(theme),
            ),
          ),
        ],
      ),
    );
  }

  Widget employeeCard(ThemeData theme) => GestureDetector(
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            image: DecorationImage(
              image: AssetImage('images/person.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: AnimatedCrossFade(
            duration: Duration(seconds: 4),
            crossFadeState: CrossFadeState.showFirst,
            firstChild: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: Text(
                  'CO-FOUNDER',
                  style: TextStyle(
                    color: theme.colorScheme.secondary,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            secondChild: Container(
              padding: EdgeInsets.all(30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: theme.colorScheme.secondary.withOpacity(.8),
              ),
              child: Column(
                children: [
                  Spacer(),
                  Text('Richard Manner', style: theme.textTheme.headline4),
                  SizedBox(height: 6),
                  Text(
                    'CO-FOUNDER',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text('Lorem ipsum dolor sit amet, consectetur'),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: src
                        .map(
                          (item) => IconButton(
                            icon: Icon(
                              item,
                              color: Color(0xFF585858),
                              size: 20,
                            ),
                            onPressed: () {},
                          ),
                        )
                        .toList(),
                  ),
                  SizedBox(height: 14),
                ],
              ),
            ),
          ),
        ),
      );

  List<IconData> src = [
    FontAwesomeIcons.whatsapp,
    Icons.email,
    FontAwesomeIcons.facebook,
    FontAwesomeIcons.instagram,
    FontAwesomeIcons.youtube,
  ];
}
