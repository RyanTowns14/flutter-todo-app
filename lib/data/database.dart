import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {


  List toDoList = [];

  // reference our box
  final _myBox = Hive.box('mybox');

  // run if this is the first time opening the app
  void createInitialData() {
    toDoList = [
      ["This is the example text", false],
      ["Click the + to add a new task!", false],
    ];
  }

  // load the data from database
  void loadData () {
    toDoList = _myBox.get("TODOLIST");
  }

  // update the database
  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }

}