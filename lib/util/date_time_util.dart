import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'app_color_util.dart';
import 'app_string_util.dart';

class DateTimeUtil {

  static String convertDateTimeToSpecificFormat({
    required DateTime dateTime,
    String format = 'dd/MM/yyyy',
  }) {
    return DateFormat(format).format(dateTime);
  }

  static Future<DateTime?> showIOSDatePicker(BuildContext ctx)async {
    DateTime? selectedDate = DateTime.now();

    return showModalBottomSheet<DateTime>(
      context: ctx,
      isDismissible: false,
      builder: (_) => Container(
        height: 250,
        color: const Color.fromARGB(255, 255, 255, 255),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(Icons.clear,size: 28,),
                  onPressed: () => Navigator.of(ctx).pop(),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: RawMaterialButton(
                    onPressed: () => Navigator.pop(ctx,selectedDate),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    fillColor: AppColor.primaryColor,
                    child: Text(
                      AppString.done,
                      style: Theme
                          .of(ctx)
                          .textTheme
                          .subtitle1!
                          .copyWith(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Flexible(
              child: CupertinoDatePicker(
                mode: CupertinoDatePickerMode.date,
                initialDateTime: DateTime.now(),
                maximumDate: DateTime.now(),
                onDateTimeChanged: (val) {
                  selectedDate = val;
                },
              ),
            ),
          ],
        ),
      ),
    ).then((value){
      if(value != null){
        return value;
      }else{
        return null;
      }
    });
  }


  static Future<DateTime?> showAndroidDatePicker(BuildContext context, {isBirthDate = false})async {
    DateTime? selectedDate = DateTime.now();

    return showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(isBirthDate ? 1980 : 2018),
      lastDate: DateTime.now(),
      builder: (ctx,child){
        return Theme(
            data: Theme.of(context).copyWith(
              colorScheme: const ColorScheme.light(
                primary: AppColor.primaryColor,
                onPrimary: Colors.white,
                onSurface: AppColor.accentColor,
              ),
              textButtonTheme: TextButtonThemeData(
                style: TextButton.styleFrom(
                  primary: AppColor.primaryColor, // button text color
                ),
              ),
            ),
            child: child ?? const Text(''),
          );
        }
    ).then((value){
      if(value != null) {
        selectedDate = value;
      }
      return selectedDate;
    });
  }
}


