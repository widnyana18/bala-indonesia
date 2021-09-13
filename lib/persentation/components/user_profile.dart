import 'package:flutter/material.dart';

class UserProfile extends StatefulWidget {
  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  late TextTheme theme;

  @override
  void initState() {
    super.initState();
    theme = Theme.of(context).textTheme;
  }

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      child: CircleAvatar(
        backgroundColor: Color(0xFFEB5B24),
        child: Text(
          'R',
          style: theme.headline6,
        ),
      ),
      itemBuilder: (ctx) => List.generate(
        menuItem.length,
        (idx) => PopupMenuItem(
          value: idx,
          child: menuItem[idx],
        ),
      ),
    );
  }

  List<Widget> get menuItem => [
        Column(
          children: [
            RichText(
              text: TextSpan(
                text: 'Hey ',
                style: theme.bodyText2,
                children: [
                  TextSpan(
                    text: 'Rodriguess',
                    style: theme.headline6,
                  )
                ],
              ),
            ),
            Divider(),
          ],
        ),
        TextButton.icon(
          onPressed: () {},
          icon: Icon(
            Icons.notifications_off_outlined,
            color: Color(0xFF767676),
          ),
          label: Text('Disable Notification'),
          style: TextButtonTheme.of(context)
              .style
              ?.copyWith(visualDensity: VisualDensity.comfortable),
        ),
        TextButton(onPressed: () {}, child: Text('Reset Password')),
        TextButton(onPressed: () {}, child: Text('Delete Account')),
        ElevatedButton(
          style: ElevatedButtonTheme.of(context).style,
          onPressed: () {},
          child: Text('LOGOUT'),
        )
      ];
}
