import 'package:flutter/material.dart';

class ReviewProduct extends StatefulWidget {
  @override
  _ReviewProductState createState() => _ReviewProductState();
}

class _ReviewProductState extends State<ReviewProduct> {
  late TextTheme txtTheme;
  @override
  void initState() {
    super.initState();
    txtTheme = Theme.of(context).textTheme;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
            hintText: 'Type something...',
            suffixIcon: IconButton(
              icon: Icon(Icons.send),
              onPressed: () {},
            ),
          ),
          maxLines: 3,
        )
      ]..addAll(
          List.generate(2, (index) => userComment(false)),
        ),
    );
  }

  Widget userComment(bool isPersonal) {
    return Container(
      margin: EdgeInsets.only(top: 18),
      padding: EdgeInsets.all(20),
      decoration: ShapeDecoration(
        color: isPersonal ? Color(0xFF5A5A5A) : Colors.transparent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundColor: Colors.green,
            radius: 16,
            child: Text('Y', style: txtTheme.headline6),
          ),
          SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: [
                        Text(
                          'Mike Rine',
                          style: txtTheme.bodyText2,
                        ),
                        SizedBox(width: 5),
                        Text(
                          '2h ago',
                          style: TextStyle(
                              fontSize: 12, fontStyle: FontStyle.italic),
                        ),
                        Spacer(),
                        Offstage(
                          offstage: !isPersonal,
                          child: IconButton(
                            icon: Icon(Icons.delete_outline),
                            iconSize: 16,
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 14),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut '
                      'ero labore et dolore magna aliqua. Ut enim ad minim veniam.',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
