import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

class Datetimepicker extends StatefulWidget {
  const Datetimepicker({super.key});

  @override
  State<Datetimepicker> createState() => _DatetimepickerState();
}

class _DatetimepickerState extends State<Datetimepicker> {
  var dateformat = DateFormat("dd-MM-yyyy");
  var pickdate = "pick the date";
  var timeformat = DateFormat("hh:mm-aa");
  var timepick = "Pick the time";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(pickdate),
        TextButton(
            onPressed: () async {
              var datepick = await showDatePicker(
                  context: context,
                  firstDate: DateTime.now(),
                  lastDate: DateTime(2028));
              var formatdate = dateformat.format(datepick ?? DateTime.now());
              pickdate = formatdate;

              setState(() {});
            },
            child: Text("get date")),
      ]),
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(timepick),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: OutlinedButton(
              onPressed: () async {
                var pickedtime = await showTimePicker(
                    context: context, initialTime: TimeOfDay.now());
                var picked = DateTime(2024, 11, 12, pickedtime?.hour ?? 0,
                    pickedtime?.minute ?? 0);
                var formattedtime = timeformat.format(picked ?? DateTime.now());
                timepick = formattedtime;
                setState(() {});

                print("time is$formattedtime");
              },
              child: Text("get time")),
        ),
      ])
    ]));
  }
}
