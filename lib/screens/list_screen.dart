import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_todo/controllers/list_controller.dart';
import 'package:mobx_todo/widgets/custom_icon_button.dart';
import 'package:mobx_todo/widgets/custom_text_field.dart';

import 'login_screen.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  _ListScreenState createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  final ListController controller = ListController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          margin: const EdgeInsets.fromLTRB(32, 0, 32, 32),
          child: Column(
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Text(
                      'Tarefas',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 32),
                    ),
                    IconButton(
                      icon: const Icon(Icons.exit_to_app),
                      color: Colors.white,
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (_) => const LoginScreen()));
                      },
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  elevation: 16,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: <Widget>[
                        Observer(
                          builder: (_) => CustomTextField(
                            controller: controller.addTodoTextController,
                            hint: 'Tarefa',
                            onChanged: controller.setNewTodoTitle,
                            suffix: CustomIconButton(
                              radius: 32,
                              iconData: Icons.add,
                              onTap: controller.addTodoPressed,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Expanded(
                          child: Observer(
                            builder: (_) => ListView.separated(
                              itemCount: controller.todoList.length,
                              itemBuilder: (_, index) {
                                final todo = controller.todoList[index];
                                return Observer(
                                  builder: (_) => ListTile(
                                    title: Text(
                                      todo.title,
                                      style: TextStyle(
                                          color: todo.done
                                              ? Colors.purple
                                              : Colors.black),
                                    ),
                                    onTap: todo.toggleDone,
                                  ),
                                );
                              },
                              separatorBuilder: (_, __) {
                                return const Divider();
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
