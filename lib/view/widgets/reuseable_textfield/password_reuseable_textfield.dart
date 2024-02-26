import 'dart:developer';

import '../all_imports/all_imports.dart';

class PasswordTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final Color textColor;
  final TextStyle textStyle;
  final TextInputType keyboardType;
  final double width;
  final double height;

  // SignUpController signUpController = Get.put(SignUpController());
  PasswordTextField({
    super.key,
    required this.hintText,
    required this.controller,
    required this.textColor,
    required this.textStyle,
    required this.height,
    // required this.formKey,
    this.keyboardType = TextInputType.text,
    this.width = double.infinity, // Default value is set to take full width
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextFormField(
        validator: (value) {
          if (value!.isEmpty) {
            log("Empty====");
            return 'Password is required';
          } else if (value.length < 6) {
            return 'Password must be at least 6 characters long';
          }
          return ""; // Validation passes
        },
        controller: controller,
        cursorColor: AppColors.primaryColor,
        keyboardType: keyboardType,
        obscureText: true,
        style: textStyle.copyWith(color: textColor),
        decoration: InputDecoration(
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
                color: AppColors
                    .primaryColorLight), // Specify the color for the error border
            borderRadius: BorderRadius.circular(8.0),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
                color: AppColors
                    .primaryColorLight), // Specify the color for the error border
            borderRadius: BorderRadius.circular(8.0),
          ),
          contentPadding: EdgeInsets.only(
            left: 10.w,
          ),
          hintText: hintText,
          hintStyle: textStyle.copyWith(color: textColor.withOpacity(0.5)),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.primaryColor),
            borderRadius: BorderRadius.circular(8.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
                color:
                    AppColors.primaryColor), // Set the unfocused border color
            borderRadius: BorderRadius.circular(8.0),
          ),
          errorMaxLines: 1,
        ),
      ),
    );
  }
}
