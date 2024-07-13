import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mubeeyportfolio/util/constants/app_color.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField({
    super.key,
    required this.formFieldName,
    required this.formHintText,
    required this.width,
    this.maxlines,
  });
  final String formFieldName;
  final String formHintText;
  final double width;
  final int? maxlines;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: TextFormField(
        maxLines: maxlines,
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.teal),
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: AppColor.appPrimaryColor, width: 3),
              borderRadius: BorderRadius.all(
                Radius.circular(15.0),
              ),
            ),
            hintText: formHintText,
            helperStyle: GoogleFonts.poppins(fontSize: 14),
            label: Text(formFieldName)),
      ),
    );
  }
}
