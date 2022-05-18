import 'package:flutter/cupertino.dart';
class CupertinoTimePickerExample extends StatefulWidget {
  const CupertinoTimePickerExample({Key? key}) : super(key: key);

  @override
  State<CupertinoTimePickerExample> createState() => _CupertinoTimePickerExampleState();
}

class _CupertinoTimePickerExampleState extends State<CupertinoTimePickerExample> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(child: CupertinoTimerPicker(
        mode: CupertinoTimerPickerMode.hm,
        initialTimerDuration: Duration(seconds: 1),
        alignment: Alignment.center,
        onTimerDurationChanged: (duration){

    }),);
  }
}
