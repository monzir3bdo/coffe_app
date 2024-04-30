import 'package:flutter/material.dart';

class ProgressIndicatorRowWidget extends StatelessWidget {
  const ProgressIndicatorRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(4, (index) {
        return ProgressWidget(isStepCompleted: index != 3);
      }),
    );
  }
}

class ProgressWidget extends StatelessWidget {
  const ProgressWidget({super.key, required this.isStepCompleted});
  final bool isStepCompleted;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 72,
      height: 4,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: isStepCompleted
            ? null
            : [
                BoxShadow(
                  blurRadius: 1,
                  color: Colors.black.withOpacity(0.5),
                )
              ],
        color: isStepCompleted ? Colors.green : Colors.white,
      ),
    );
  }
}
