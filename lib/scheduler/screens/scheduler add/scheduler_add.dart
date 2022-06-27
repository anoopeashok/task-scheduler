import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:scheduler/mixins/date_format_mixins.dart';
import 'package:scheduler/mixins/datetime_pickers.dart';
import 'package:scheduler/scheduler/bloc/scheduler_save/scheduler_save_bloc.dart';
import 'package:scheduler/scheduler/screens/scheduler%20add/scheduler_validation_error.dart';
import 'package:scheduler/utils/theme.dart';

import '../../bloc/scheduler_save/scheduler_save_state.dart';
import 'text_field.dart';

class AddNewScheduler extends ConsumerWidget
    with DateFormatMixin, DateTimePicker {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var state = ref.watch(schedulerSaveProvider);
    var notifier = ref.watch(schedulerSaveProvider.notifier);
    ref.listen<SchedulerSaveState>(schedulerSaveProvider, ((previous, next) {
      if (next == const SchedulerSaveState.success()) {
        Fluttertoast.showToast(msg: 'New schedule succesfully added');
        Navigator.pop(context);
      }
    }));
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: state.maybeWhen(
              loading: () => Container(
                    height: 200,
                    child: const Center(child: CircularProgressIndicator()),
                  ),
              error: (err) => Container(
                    height: 200,
                    child: Center(child: Text(err)),
                  ),
              validationError: (error) => SchedulerValidationError(),
              initial: () => Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Add Schedule',
                            style: TextStyle(color: kPrimaryColor),
                          ),
                          IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: const Icon(
                                Icons.close,
                                color: Colors.grey,
                              ))
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        'Name',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 50,
                        child: TextField(
                          controller: notifier.nameControlller,
                          decoration: InputDecoration(
                              fillColor: textFieldBg,
                              filled: true,
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(10),
                              )),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Date & Time',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: textFieldBg),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text('Start Time'),
                                  InkWell(
                                    onTap: () async {
                                      notifier.setStartTime(context);
                                    },
                                    child: Row(
                                      children: [
                                        SizedBox(
                                            width: 100,
                                            height: 30,
                                            child: TextFieldWidget(
                                                notifier.startTimeController)),
                                        const Icon(
                                          CupertinoIcons.forward,
                                          color: Colors.grey,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text('End Time'),
                                  InkWell(
                                    onTap: () async {
                                      notifier.setEndTime(context);
                                    },
                                    child: Row(
                                      children: [
                                        SizedBox(
                                            width: 100,
                                            height: 30,
                                            child: TextFieldWidget(
                                                notifier.endTimeController)),
                                        const Icon(
                                          CupertinoIcons.forward,
                                          color: Colors.grey,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text('Date'),
                                  InkWell(
                                    onTap: () {
                                      notifier.setDate(context);
                                    },
                                    child: Row(
                                      children: [
                                        SizedBox(
                                            width: 100,
                                            height: 30,
                                            child: TextFieldWidget(
                                                notifier.dateController)),
                                        const Icon(
                                          CupertinoIcons.forward,
                                          color: Colors.grey,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                          onPressed: () => notifier.validation(),
                          child: const Text('Add Schedule'))
                    ],
                  ),
              orElse: () => const SizedBox.shrink())),
    );
  }
}
