import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum FeedbackChecks { VeryGood, Good, Okay, Bad, VeryBad }

class RadioButtonView extends StatefulWidget {
  FeedbackChecks _checks;
  final title;
  Function(FeedbackChecks) onValueChanged;
  RadioButtonView(this._checks, this.title, this.onValueChanged);

  @override
  _RadioButtonViewState createState() => _RadioButtonViewState();
}

class _RadioButtonViewState extends State<RadioButtonView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.title, style: Theme.of(context).textTheme.headline1,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Radio(
              visualDensity: VisualDensity(horizontal: VisualDensity.minimumDensity),
              value: FeedbackChecks.VeryGood,
              groupValue: widget._checks,
              onChanged: (value) => widget.onValueChanged(value),
            ),
            Text('V.Good'),
            Radio(
              visualDensity: VisualDensity(horizontal: VisualDensity.minimumDensity),
              value: FeedbackChecks.Good,
              groupValue: widget._checks,
              onChanged: (value) => widget.onValueChanged(value),
            ),
            Text('Good'),
            Radio(
              visualDensity: VisualDensity(horizontal: VisualDensity.minimumDensity),
              value: FeedbackChecks.Okay,
              groupValue: widget._checks,
              onChanged: (value) => widget.onValueChanged(value),
            ),
            Text('OK'),
            Radio(
              visualDensity: VisualDensity(horizontal: VisualDensity.minimumDensity),
              value: FeedbackChecks.Bad,
              groupValue: widget._checks,
              onChanged: (value) => widget.onValueChanged(value),
            ),
            Text('Bad'),
            Radio(
              visualDensity: VisualDensity(horizontal: VisualDensity.minimumDensity),
              value: FeedbackChecks.VeryBad,
              groupValue: widget._checks,
              onChanged: (value) => widget.onValueChanged(value),
            ),
            Text('V.Bad'),
          ],),
      ],
    );
  }
}
