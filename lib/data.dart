import 'package:flutter/material.dart';
import 'package:counter_7/form.dart';
import 'package:counter_7/main.dart';
import 'package:intl/intl.dart';

class DataPage extends StatefulWidget {
    const DataPage({super.key});

    @override
    State<DataPage> createState() => _DataPageState();
}

class _DataPageState extends State<DataPage> {
  
  @override
  Widget build(BuildContext context) {
      return Scaffold(
          appBar: AppBar(
              title: Text('Data Budget'),
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
              ],
            ),
          ),
          body: ListView.builder(
            itemCount: SimpanData.simpanData.length,
            itemBuilder: (context,index) {
              final item = SimpanData.simpanData[index];
              return ListTile(
                title:Text(item.judul),
                subtitle:Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[Text(item.nominal.toString()), 
                Text(item.tipe),
                //Text(item.date.toString().substring(0,10))
                Text(
                  // EEEE : weekday
                  // d    : day
                  // yyyy : year
                  DateFormat(
                    'EEE, d MMMM, yyyy'
                  ).format(item.date),
                  style: TextStyle(fontSize: 15),
                  textAlign: TextAlign.left),
                ]),
                
              );
            },
          ),
      );
  }
}