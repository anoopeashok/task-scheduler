import 'package:flutter/material.dart';
import 'package:scheduler/utils/theme.dart';

class SchedulerValidationError extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
          'This overlaps with another schedule and can’t be saved.\n Please modify and try again.',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.red),
        ),
        SizedBox(height: 20,),
        const Text('Please modify and try again',style:TextStyle(fontSize: 16,color: kPrimaryColor ) ,),
        SizedBox(
          height: 20,
        ),
        ElevatedButton(
            onPressed: () => Navigator.pop(context), child: const Text('Okay'))
      ],
    );
  }
}
