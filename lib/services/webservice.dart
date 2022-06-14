import 'package:city_care/models/incident.dart';
import 'package:dio/dio.dart';

class Webservice {
  Future<void> saveIncident(Incident incident) async {
    final url = "https://vast-savannah-75068.herokuapp.com/incidentsNoImage";

    await Dio().post(url, data: {"title": incident.title, "description": incident.description}, options: Options(contentType: "application/x-www-form-urlencoded"));
  }
}
