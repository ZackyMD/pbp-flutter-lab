// To parse this JSON data, do
//
//     final WatchList = WatchListFromJson(jsonString);

import 'dart:convert';

List<WatchListModel> WatchListFromJson(String str) => List<WatchListModel>.from(
    json.decode(str).map((x) => WatchListModel.fromJson(x)));

String WatchListToJson(List<WatchListModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class WatchListModel {
  WatchListModel(
      {required this.titleWatched,
      required this.releaseDateWatched,
      required this.ratingWatched,
      required this.watchedFilm,
      required this.reviewWatched});

  String titleWatched;
  String releaseDateWatched;
  String ratingWatched;
  String watchedFilm;
  String reviewWatched;

  factory WatchListModel.fromJson(Map<String, dynamic> json) => WatchListModel(
        titleWatched: json["fields"]["titleWatched"],
        releaseDateWatched: json["fields"]["releaseDateWatched"],
        ratingWatched: json["fields"]["ratingWatched"],
        watchedFilm: json["fields"]["watchedFilm"],
        reviewWatched: json["fields"]["reviewWatched"],
      );

  Map<String, dynamic> toJson() => {
        "titleWatched": titleWatched,
        "releaseDateWatched": releaseDateWatched,
        "ratingWatched": ratingWatched,
        "reviewWatched": reviewWatched,
        "watchedFilm": watchedFilm,
      };
}
