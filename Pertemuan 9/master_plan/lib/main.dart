import 'package:flutter/material.dart';
import 'package:master_plan/models/plan.dart';
import 'package:master_plan/provider/plan_provider.dart';
import 'package:master_plan/views/plan_creator_screen.dart';
import 'package:master_plan/views/plan_screen.dart';

void main() {
  runApp(const MasterPlanApp());
}

class MasterPlanApp extends StatelessWidget {
  const MasterPlanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return PlanProvider(
        child: MaterialApp(
          title: "State Management App",
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const PlanCreatorScreen(),
        ),
        notifier: ValueNotifier<List<Plan>>(const []));
  }
}
