import 'package:city_care/pages/incident_report_page.dart';
import 'package:city_care/services/webservice.dart';
import 'package:city_care/view_models/report_incident_view_model.dart';
import 'package:city_care/widgets/incident_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class IncidentListPage extends StatelessWidget {
  Future<void> _navigateToReportIncidentPage(BuildContext context) async {
    await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => ChangeNotifierProvider(
                  create: (context) => ReportIncidentViewModel(),
                  child: IncidentReportPage(),
                ),
            fullscreenDialog: true));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Incidents"),
          backgroundColor: Colors.green,
        ),
        body: Stack(
          children: <Widget>[
            IncidentList(),
            SafeArea(
              child: Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FloatingActionButton(
                    child: Icon(Icons.add),
                    onPressed: () {
                      _navigateToReportIncidentPage(context);
                    },
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
