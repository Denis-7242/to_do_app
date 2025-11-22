
import 'package:hive/hive.dart';

class ToDoDatabase {
  //initialize empty list
  List toDoList = [];

  final _mybox = Hive.box('mybox');

  //create initial data
  void createInitialData() {
    toDoList = [
      ["Welcome to your ToDo app", false],
      ["Tap + to add a new task", false],
      ["Swipe a task to the left to delete.", false],

  
    ];
  }
  //load data from database
  void loadData() {
    toDoList = _mybox.get("TODOLIST");
  }

  //update database
  void updateDatabase() {
    _mybox.put("TODOLIST", toDoList);
  }
}