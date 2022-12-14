import 'package:counter_7/model/watchlist.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

List<String> statusMovie = [];
Future<List<WatchListModel>> fetchToDo() async {
  var url =
      Uri.parse('http://tugas2-pbp-zacky.herokuapp.com/mywatchlist/json/');
  var response = await http.get(
    url,
    headers: {
      "Access-Control-Allow-Origin": "*",
      "Content-Type": "application/json",
    },
  );

  var data = jsonDecode(utf8.decode(response.bodyBytes));

  // melakukan konversi data json menjadi object ToDo
  List<WatchListModel> listWatch = [];

  for (var d in data) {
    if (d != null) {
      listWatch.add(WatchListModel.fromJson(d));
      statusMovie.add(WatchListModel.fromJson(d).watchedFilm);
    }
  }
  return listWatch;
}
