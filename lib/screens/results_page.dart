import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/components/resuable_card.dart';

import '../components/bottom_container_button.dart';
import '../constants.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Container(
              child: Text(
                "Your Result",
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReuseableCard(
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text('NORMAL', style: kResultTextStyle),
                  Text(
                    '26.7',
                    style: kNumberTextStyle,
                  ),
                  Text('Description', style: kBodyTextStyle),
                ],
              ),
            ),
          ),
          BottomContainerButton(
            title: "RE-CALCULATE",
            onPress: () {
              Navigator.pop(
                context,
              );
            },
          )
        ],
      ),
    );
  }
}
