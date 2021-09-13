import 'package:bala_indonesia/persentation/screens/job_desk/widgets/job_board.dart';
import 'package:bala_indonesia/persentation/utils/utils.dart';
import 'package:flutter/material.dart';

class JobDeskPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'icon/logo.png',
              width: 90,
            ),
            SizedBox(height: 40),
            ResponsiveLayout(
              largeScreen: Row(
                children: [
                  Flexible(
                    child: Column(
                      children: [
                        Text('MAGANG', style: txtTheme.bodyText2),
                        SizedBox(height: 25),
                        JobBoard(),
                      ],
                    ),
                  ),
                  SizedBox(width: 35),
                  Flexible(
                    child: Column(
                      children: [
                        Text('JOB DESK', style: txtTheme.bodyText2),
                        SizedBox(height: 25),
                        JobBoard(),
                      ],
                    ),
                  ),
                ],
              ),
              smallScreen: Column(
                children: [
                  Text('MAGANG', style: txtTheme.bodyText2),
                  SizedBox(height: 25),
                  JobBoard(),
                  SizedBox(height: 35),
                  Text('JOB DESK', style: txtTheme.bodyText2),
                  SizedBox(height: 25),
                  JobBoard(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
