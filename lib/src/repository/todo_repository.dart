import 'package:disenos/src/dao/todo_dao.dart';
import 'package:disenos/src/model/todo.dart';

class TodoRepository {
  final todoDao = TodoDao();

  Future getAllTodos({String query}) => todoDao.getTodos(query: query);

  Future insertTodo(Todo todo) => todoDao.createTodo(todo);

  Future updateTodo(Todo todo) => todoDao.updateTodo(todo);

  Future deleteTodoById(int id) => todoDao.deleteTodo(id);

  //We are not going to use this in the demo
  Future deleteAllTodos() => todoDao.deleteAllTodos();
}
