import 'package:flutter/material.dart';

class OrderCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              AspectRatio(
                aspectRatio: 1.2,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color(0xFF3E3E3E),
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Positioned(
                        left: 0,
                        right: 0,
                        child: Image.asset('images/balachips_ori.png',
                            fit: BoxFit.cover),
                      ),
                      Positioned(
                        right: 1,
                        child: Image.asset('images/balachips_spicy.png',
                            fit: BoxFit.cover),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Flexible(
                child: Text(
                  'Bleu Da Chennal',
                  softWrap: true,
                  style: TextStyle(
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text('21 Sep 2021 - 3:45 PM'),
              SizedBox(height: 10),
              RichText(
                text: TextSpan(
                  text: '2 items ',
                  children: [
                    TextSpan(
                      text: ' Rp.288.000',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
