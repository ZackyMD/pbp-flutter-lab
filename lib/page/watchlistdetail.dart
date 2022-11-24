import 'package:counter_7/model/watchlist.dart';
import 'package:counter_7/page/form.dart';
import 'package:counter_7/page/mywatchlist.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/page/data.dart';
import 'package:counter_7/main.dart';
import 'package:flutter/cupertino.dart';

class WatchListDetail extends StatelessWidget {
  final WatchListModel data;
  const WatchListDetail({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail'),
      ),
      drawer: Drawer(
        child: ListView(
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: [
                const DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Text('Drawer Header'),
                ),
                ListTile(
                  title: const Text('counter_7'),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => const MyApp()));
                  },
                ),
                ListTile(
                  title: const Text('Tambah Budget'),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => const FormPage()));
                  },
                ),
                ListTile(
                  title: const Text('Data Budget'),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => const DataPage()));
                  },
                ),
                ListTile(
                  title: const Text('Watch List'),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => const WatchList()));
                  },
                )
              ],
            ),
      ),
      body: Container(
        margin: new EdgeInsets.symmetric(vertical: 20.0),
        child: Column(
          children: [
            Center(
              child: Text(data.titleWatched,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32)),
            ),
            Row(
              children: [
                Text("Release Date : ",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                Text(data.releaseDateWatched,
                    style:
                        TextStyle(fontWeight: FontWeight.normal, fontSize: 16)),
              ],
            ),
            Row(
              children: [
                Text("Rating : ",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                Text(data.ratingWatched,
                    style:
                        TextStyle(fontWeight: FontWeight.normal, fontSize: 16)),
              ],
            ),
            Row(
              children: [
                Text("Status : ",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                if (data.watchedFilm == "Iya")
                  Text("Watched",
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 16)),
                if (data.watchedFilm == "Tidak")
                  Text("Unwatched",
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 16)),
              ],
            ),
            Row(
              children: [
                Text(
                  "Review: ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 16),
                )
              ],
            ),
            Text(
              data.reviewWatched,
              style: const TextStyle(
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
      persistentFooterButtons: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            minimumSize: const Size.fromHeight(40),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text(
            'Back',
            style: TextStyle(fontSize: 12),
          ),
        ),
      ],
    );
  }
}