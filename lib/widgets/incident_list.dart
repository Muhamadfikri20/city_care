import 'package:city_care/view_models/incident_view_model.dart';
import 'package:flutter/material.dart';

class IncidentList extends StatelessWidget {
  final List<IncidentViewModel> incidents;
  IncidentList({required this.incidents});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: incidents.length,
      itemBuilder: (context, index) {
        final incident = incidents[index];
        return ListTile(title: Text(incident.title));
      },
    );
  }
}
