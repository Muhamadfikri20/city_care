import 'package:flutter/material.dart';

class IncidentReportPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Report an incident")),
        body: SingleChildScrollView(
          child: Column(children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: "Enter title", border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
            ),
            TextField(
              textInputAction: TextInputAction.done,
              maxLines: null,
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(labelText: "Enter desciption"),
            ),
            FlatButton(
              child: Text("Save", style: TextStyle(color: Colors.white)),
              color: Colors.green,
              onPressed: () {},
            )
          ]),
        ));
  }
}
