// import 'package:flutter/material.dart';
// import 'package:mobx_database/data/moor_database.dart';
// import 'package:provider/provider.dart';

// class HomePage extends StatefulWidget {


//   HomePage(BuildContext context);
//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {


//   @override
//   Widget build(BuildContext context) {
//     return Consumer<AppDatabase>(
//       builder: (context, snaphot, widget) {
//         return FutureBuilder<List<Task>>(
//             future: db.getAllTasks(),
//             builder:
//                 (BuildContext context, AsyncSnapshot<List<Task>> snapshot) {
//               if (snapshot.hasData) {
//                 return Container(
//                   child: ListView.builder(
//                     itemCount: snapshot.requireData.length,
//                     itemBuilder: (context, index) {
//                       Task currentEntry = snapshot.requireData[index];
//                       return ListTile(
//                         title: Text('${currentEntry.name}'),
//                       );
//                     },
//                   ),
//                 );
//               } else {
//                 return CircularProgressIndicator();
//               }
//             });
//       },
//     );
//   }
// }
