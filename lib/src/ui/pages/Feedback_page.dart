import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_street_533/src/ui/views/RadioButtonView.dart';

class FeedbackPage extends StatefulWidget {
  @override
  _FeedbackPageState createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
  FeedbackChecks _q1Check, _q2Check, _q3Check, _q4Check;
  TextEditingController _q5Controller = TextEditingController();
  TextEditingController _q6Controller = TextEditingController();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _dateController =
      TextEditingController(text: DateTime.now().toIso8601String());
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Thanks for coming',
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 50,
              width: double.infinity,
              color: Colors.lightBlueAccent,
              child: Center(
                child: Text(
                  'Customer Survey',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RadioButtonView(_q1Check, "1. How was the food?",
                      (FeedbackChecks _value) {
                    setState(() {
                      _q1Check = _value;
                    });
                  }),
                  RadioButtonView(_q2Check, "2. How was the menu variety?",
                      (FeedbackChecks _value) {
                    setState(() {
                      _q2Check = _value;
                    });
                  }),
                  RadioButtonView(_q3Check, "3. How was the service?",
                      (FeedbackChecks _value) {
                    setState(() {
                      _q3Check = _value;
                    });
                  }),
                  RadioButtonView(_q4Check, "4. How was the atmosphere?",
                      (FeedbackChecks _value) {
                    setState(() {
                      _q4Check = _value;
                    });
                  }),
                  Text(
                    '5. What could our restaurant improve on?',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15.0),
                    child: TextField(
                      controller: _q5Controller,
                    ),
                  ),
                  Text(
                    '6. Any other comments/suggestions?',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  TextField(
                    controller: _q6Controller,
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
              width: double.infinity,
              color: Colors.lightBlueAccent,
              child: Center(
                child: Text(
                  'Your Information',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 23.0),
              child: Form(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 1,
                            child: TextFormField(
                              controller: _nameController,
                              decoration: InputDecoration(labelText: 'Name'),
                              validator: (value) {
                                return value.isEmpty
                                    ? "Enter your name!"
                                    : null;
                              },
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            flex: 1,
                            child: TextFormField(
                              controller: _dateController,
                              readOnly: true,
                              decoration: InputDecoration(
                                labelText: 'Date',
                              ),
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 1,
                            child: TextFormField(
                              controller: _phoneController,
                              decoration: InputDecoration(labelText: 'Phone'),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            flex: 1,
                            child: TextFormField(
                              controller: _emailController,
                              decoration: InputDecoration(
                                labelText: 'Email',
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              child: Container(
                height: 80,
                width: double.infinity,
                color: Colors.lightBlueAccent,
                child: Center(
                    child: Text(
                  "Submit",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                )),
              ),
              onTap: () {

              },
            ),
          ],
        ),
      ),
    );
  }
}
