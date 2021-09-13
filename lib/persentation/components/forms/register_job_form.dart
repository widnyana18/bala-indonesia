import 'package:bala_indonesia/persentation/components/forms/forms.dart';
import 'package:bala_indonesia/persentation/utils/responsiveLayout.dart';
import 'package:flutter/material.dart';

class RegisterJobForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;
    final isLarge = ResponsiveLayout.isLargeScreen(context);

    return FormScreen(
      dialogWidth: .65,
      form: Column(
        crossAxisAlignment:
            isLarge ? CrossAxisAlignment.start : CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'Regiter Job',
            textAlign: TextAlign.center,
            style: txtTheme.headline2,
          ),
          SizedBox(
            height: 60,
          ),
          isLarge
              ? Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(child: leftForm),
                    SizedBox(width: 45),
                    Flexible(child: rightForm(txtTheme)),
                  ],
                )
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [leftForm, rightForm(txtTheme)],
                ),
          SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {},
            child: Text('SUBMIT ACCOUNT'),
          ),
        ],
      ),
    );
  }

  Widget leftForm = Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      TextFormField(
        onChanged: (value) {},
        validator: (_) {},
        decoration: InputDecoration(labelText: 'Full Name'),
      ),
      SizedBox(height: 30),
      TextFormField(
        keyboardType: TextInputType.number,
        onChanged: (value) {},
        validator: (_) {},
        decoration: InputDecoration(
          labelText: 'Phone Number',
          hintText: '812308213',
          prefixText: '+62',
        ),
      ),
      SizedBox(height: 30),
      TextFormField(
        onChanged: (value) {},
        validator: (_) {},
        decoration: InputDecoration(
            labelText: 'Address', hintText: 'Jln.ngurah rai...'),
      ),
    ],
  );

  Widget rightForm(TextTheme txtTheme) => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Photo',
            style: txtTheme.bodyText2,
          ),
          SizedBox(height: 8),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              'Open File photo 3x4 cover bebas',
              style: txtTheme.bodyText1,
            ),
            style: ElevatedButton.styleFrom(primary: Color(0xFF4D4D4D)),
          ),
          SizedBox(height: 7),
          Text(
            'photo3x4.jpg',
            style: txtTheme.bodyText1,
          ),
          SizedBox(height: 30),
          Text(
            'CV',
            style: txtTheme.bodyText2,
          ),
          SizedBox(height: 8),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              'Pick File max 5 mb',
              style: txtTheme.bodyText1,
            ),
            style: ElevatedButton.styleFrom(primary: Color(0xFF4D4D4D)),
          ),
          SizedBox(height: 7),
          Text(
            'myCV.pdf',
            style: txtTheme.bodyText1,
          ),
          SizedBox(height: 30),
          TextFormField(
            keyboardType: TextInputType.url,
            onChanged: (value) {},
            validator: (_) {},
            decoration: InputDecoration(
              labelText: 'Link Portfolio (Optional)',
              hintText: 'ex: github, google drive, personal blog or linkedin',
            ),
          ),
        ],
      );
}
