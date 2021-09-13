import 'package:flutter/material.dart';

class NavbarNative extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Material(
            elevation: 8,
            color: Color(0xFF4E4E4E),
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundColor: Color(0xFFF9A51A),
                    child: Text(
                      'R',
                      style:
                          TextStyle(fontSize: 70, fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(height: 20),
                  RichText(
                    text: TextSpan(
                      text: 'Hey',
                      style: TextStyle(fontSize: 17),
                      children: [
                        TextSpan(text: 'Rodriguess', style: txtTheme.headline6)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 30),
          Column(
            children: menu.map((item) {
              if (item.children == null) {
                return ListTile(
                    title: Text(item.menu!.name, style: txtTheme.bodyText2),
                    onTap: item.menu!.onTap);
              }

              return ExpansionTile(
                title: Text(item.menu!.name, style: txtTheme.bodyText2),
                children: item.children!
                    .map((sub) => ListTile(
                        title: Text(sub.name, style: txtTheme.bodyText2),
                        onTap: sub.onTap))
                    .toList(),
              );
            }).toList(),
          ),
          SizedBox(height: 30),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: ElevatedButton(onPressed: () {}, child: Text('LOGOUT')),
          ),
        ],
      ),
    );
  }

  static header() => SliverAppBar(
        title: Image.asset('icon/logo.png', width: 90),
        actions: [
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          )
        ],
        floating: true,
        snap: true,
      );

  List<ListMenuMobile> menu = [
    ListMenuMobile(menu: MenuMobile('My Shoppings', () {})),
    ListMenuMobile(menu: MenuMobile('Careers', () {})),
    ListMenuMobile(menu: MenuMobile('Blogs', () {})),
    ListMenuMobile(menu: MenuMobile('About Us', () {})),
    ListMenuMobile(
      menu: MenuMobile('Settings', () {}),
      children: [
        MenuMobile('Disable Notification', () {},
            trailing: Icons.notifications_off_outlined),
        MenuMobile('Reset Password', () {}),
        MenuMobile('Delete Account', () {}),
      ],
    ),
  ];
}

class MenuMobile {
  final String name;
  final VoidCallback onTap;
  final IconData? trailing;

  MenuMobile(this.name, this.onTap, {this.trailing});
}

class ListMenuMobile {
  final MenuMobile? menu;
  final List<MenuMobile>? children;

  ListMenuMobile({this.menu, this.children});
}
