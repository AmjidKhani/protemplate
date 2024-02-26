import '../../all_imports/all_imports.dart';

showAccountToast(BuildContext context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      elevation: 0,
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      duration: const Duration(milliseconds: 1200),
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.r)),
      margin: EdgeInsets.only(bottom: 170.h, right: 65.w, left: 65.w),
      backgroundColor: const Color(0xff626161),
      content: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(color: Colors.white),
      )));
}