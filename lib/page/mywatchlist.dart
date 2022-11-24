import 'package:counter_7/page/form.dart';
import 'package:counter_7/page/watchlistdetail.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/page/data.dart';
import 'package:counter_7/main.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:counter_7/model/watchlist.dart';

import '../api/fetchwatchlist.dart';

class WatchList extends StatefulWidget {
  const WatchList({super.key});

  @override
  State<WatchList> createState() => _WatchList();
}

class _WatchList extends State<WatchList> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My Watch List'),
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
        body: FutureBuilder(
            future: fetchToDo(),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.data == null) {
                return const Center(child: CircularProgressIndicator());
              } else {
                if (!snapshot.hasData) {
                  return Column(
                    children: const [
                      Text(
                        "Tidak ada watchlist :(",
                        style:
                            TextStyle(color: Color(0xff59A5D8), fontSize: 20),
                      ),
                      SizedBox(height: 8),
                    ],
                  );
                } else {
                  return ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (_, index) => ListTile(
                          
                          title: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => WatchListDetail(
                                          data: snapshot.data![index])));
                            },
                            child: Container(
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 12),
                              padding: const EdgeInsets.all(20.0),
                              
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "${snapshot.data![index].titleWatched}",
                                    style: const TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )));
                }
              }
            }));
  }
}
