import 'package:flutter/material.dart';
import 'package:uniapp/main.dart';

class EntekhabVahed extends StatelessWidget {
  const EntekhabVahed({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          Navigator.of(context).pop();
          return false;
        },
        child: const Scaffold(body: ChoosenCoursesList()));
  }
}

class ChoosenCoursesList extends StatefulWidget {
  const ChoosenCoursesList({super.key});

  @override
  State<ChoosenCoursesList> createState() => _ChoosenCoursesListState();
}

class _ChoosenCoursesListState extends State<ChoosenCoursesList> {
  final TextEditingController _taskController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final List<Map<String, String>> _tasks = [];

  void _addTask() {
    final String task = _taskController.text;
    final String description = _descriptionController.text;
    if (task.isNotEmpty && description.isNotEmpty) {
      setState(() {
        _tasks.add({'task': task, 'description': description});
        _taskController.clear();
        _descriptionController.clear();
      });
    }
  }

  void _deleteTask(int index) {
    setState(() {
      _tasks.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.only(top: 24),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 18),
              child: Padding(
                padding: const EdgeInsets.only(top: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 32),
                      child: Text(
                        'انتخاب واحد',
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge!
                            .copyWith(color: Theme.of(context).primaryColor),
                      ),
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(builder: (context) {
                            return const MainScreen();
                          }));
                        },
                        icon: Icon(
                          Icons.arrow_forward,
                          color: Theme.of(context).primaryColor,
                        ))
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32, right: 32),
              child: TextField(
                controller: _taskController,
                autocorrect: false,
                autofocus: false,
                decoration: const InputDecoration(
                    label: Text(
                  'کد درس',
                  style: TextStyle(
                    fontFamily: 'Vazir',
                  ),
                )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32, right: 32),
              child: TextField(
                controller: _descriptionController,
                autocorrect: false,
                autofocus: false,
                decoration: const InputDecoration(
                    label: Text(
                  'کد گروه',
                  style: TextStyle(
                    fontFamily: 'Vazir',
                  ),
                )),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.only(left: 32, right: 32),
              child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14))),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color(0xffffb703)),
                      minimumSize: MaterialStateProperty.all(
                          Size(MediaQuery.of(context).size.width, 60))),
                  onPressed: _addTask,
                  child: Text(
                    'اضافه کردن',
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Theme.of(context).cardColor, fontSize: 18),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32, right: 32),
              child: Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: _tasks.length,
                  itemBuilder: (context, index) {
                    return Container(
                      color: Theme.of(context).scaffoldBackgroundColor,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(_tasks[index]['task']!),
                              Text(_tasks[index]['description']!),
                            ],
                          ),
                          IconButton(
                              onPressed: () {
                                // _deleteTask(index);
                              },
                              icon: const Icon(
                                Icons.delete_outline_sharp,
                                color: Colors.red,
                              ))
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
