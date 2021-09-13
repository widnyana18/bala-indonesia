import 'package:flutter/material.dart';

class JobBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;

    return ExpansionPanelList(
      dividerColor: Colors.transparent,
      expandedHeaderPadding: EdgeInsets.zero,
      children: List.generate(
        3,
        (index) => ExpansionPanel(
          backgroundColor: Color(0xFF3F3F3F),
          canTapOnHeader: true,
          headerBuilder: (ctx, _) => ListTile(
            title: Text('Web-Developer', style: txtTheme.headline5),
          ),
          body: Padding(
            padding: EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'We are looking for an UX Designer to join the Digital Growth Experience & Design '
                  'group who is up to the challenge of driving the design of world-class digital products.\n\n'
                  'Job Responsibilities\n'
                  '•    Be an advocate for user needs and experiences throughout the design process\n'
                  '•    Design, prototype and build (to ensure design intent is met) digital products and experiences at all levels of fidelity\n'
                  '•    Work with UX researchers to translate generative and evaluative design research insights and implications into meaningful interactions and experiences for consumers\n\n'
                  "Education Requirements Bachelor's Degree Preferred\n"
                  'Education Specifications\n'
                  '•    A degree in design, interaction design, design planning, human-computer interaction, or equivalent experience\n\n'
                  'Experience Requirements\n'
                  '•    At least 2 years of hands-on UX design experience\n'
                  '•    A degree in design, interaction design, design planning, human-computer interaction or equivalent experience\n'
                  '•    An outstanding portfolio of prior work that demonstrates strong capabilities designing transactional user experiences across a range of different projects\n',
                  style: txtTheme.headline5,
                ),
                SizedBox(height: 26),
                ElevatedButton(onPressed: () {}, child: Text('APPLY THIS JOB'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
