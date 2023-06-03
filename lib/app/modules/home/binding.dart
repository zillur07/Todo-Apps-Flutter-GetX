import 'package:get/get.dart';
import 'package:todo_app/app/data/providers/task/provider.dart';
import 'package:todo_app/app/modules/home/controller.dart';

import '../../data/services/storage/repository.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => HomeController(
        taskRepository: TaskRepository(
          taskProvider: TaskProvider(),
        ),
      ),
    );
  }
}
