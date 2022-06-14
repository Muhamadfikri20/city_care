import 'package:city_care/models/incident.dart';
import 'package:dio/dio.dart';

class Webservice {
  Future<void> saveIncident() async {
    final url = "https://vast-savannah-75068.herokuapp.com/incidentsNoImage";

    await Dio().post(url, data: {"title": "Traffic", "description": "on traffic"}, options: Options(contentType: "application/x-www-form-urlencoded"));
  }
}
