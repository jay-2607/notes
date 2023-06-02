import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:notes/models/notes_model.dart';
import 'package:path_provider/path_provider.dart';
import 'home_screen.dart';


void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  var directory = await getApplicationDocumentsDirectory();
  Hive.init(directory.path);

  Hive.registerAdapter(NotesModelAdapter());

  await Hive.openBox<NotesModel>('notes');

  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Notes',
        home: HomeScreen(),
      ),
    );
  }
}
