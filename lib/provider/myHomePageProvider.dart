// ignore_for_file: unused_local_variable, use_build_context_synchronously

import 'dart:convert';

import 'package:final_app/model/myData.dart';
import 'package:final_app/ui/common/global_images.dart';
import 'package:final_app/ui/common/ui_helpers.dart';
import 'package:final_app/ui/views/home/widget/components/ct_TextFieldEdit/CustomTextfile.dart';
import 'package:final_app/ui/views/home/widget/components/snackbar_utils.dart';
import 'package:flutter/material.dart';
import 'package:quickalert/quickalert.dart';

class MyHomePageProvider extends ChangeNotifier {
  MyData? data; // Sử dụng late để có thể khởi tạo sau khi constructor chạy
  bool isDataInitialized = false;

  Future<void> initData(BuildContext context) async {
    try {
      var res = await DefaultAssetBundle.of(context)
          .loadString("assets/raw/mJson.json");
      var mJson = json.decode(res);
      data = MyData.fromJson(mJson);
      isDataInitialized = true;
      notifyListeners();
    } catch (e) {
      print('Error: $e');
    }
  }

  void showEditDialog(BuildContext context, Results data) {
    // print("Show Edit Dialog: ${data.firstName}");
    TextEditingController firstNameController =
        TextEditingController(text: data.firstName);
    TextEditingController lastNameController =
        TextEditingController(text: data.lastName);
    TextEditingController emailController =
        TextEditingController(text: data.email);
    TextEditingController phoneController =
        TextEditingController(text: data.phone);
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white70,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7.0),
          ),
          title: Text('Chỉnh sửa thông tin > ${data.firstName}'),
          content: Container(
            padding: EdgeInsets.all(defaultPadding * 2),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextfiled(
                  enabled: true, // Set this to true for editing
                  icon: "",
                  text: "First Name",
                  borderSide: BorderSide(
                    color: Color(0xfff3f3f3),
                    width: 1,
                  ),
                  fillColor: Colors.white,

                  controller: firstNameController,
                ),
                CustomTextfiled(
                  controller: lastNameController,
                  enabled: true, // Set this to true for editing
                  icon: "",
                  text: "Last Name",
                  borderSide: BorderSide(
                    color: Color(0xfff3f3f3),
                    width: 1,
                  ),
                  fillColor: Colors.white,
                ),
                CustomTextfiled(
                  controller: emailController,
                  enabled: true, // Set this to true for editing
                  icon: "",
                  text: "Email",
                  borderSide: BorderSide(
                    color: Color(0xfff3f3f3),
                    width: 1,
                  ),
                  fillColor: Colors.white,
                ),
                CustomTextfiled(
                  controller: phoneController,
                  enabled: true, // Set this to true for editing
                  icon: "hello",
                  text: "Phone",
                  borderSide: BorderSide(
                    color: Color(0xfff3f3f3),
                    width: 1,
                  ),
                  fillColor: Colors.white,
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Đóng'),
            ),
            TextButton(
              onPressed: () {
                // TODO: Implement logic to save the edited data
                Navigator.of(context).pop();
              },
              child: Text('Lưu'),
            ),
          ],
        );
      },
    );
  }

  Future<bool> showConfirmation(BuildContext context, Results data) async {
    try {
      bool? confirm = await QuickAlert.show(
        context: context,
        type: QuickAlertType.warning,
        title: 'Xác nhận xóa',
        text:
            'Bạn có chắc muốn xóa ${data.firstName}? \n Khi file xóa rồi không thể khôi phục được',
        showCancelBtn: true,
        width: 500,
      );

      print("Giá trị confirm: $confirm"); // In giá trị để debug

      if (confirm != null && confirm) {
        return confirm == true;
      } else {
        showTopRightSnackBar(
          context,
          'Bạn đã gửi yêu cầu XOA thành công!',
          'Khi file xóa rồi không thể khôi phục',
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          textColor: const Color.fromARGB(255, 0, 0, 0),
          iconData: Globalsvg.checkOne,
        );
        return false;
      }
    } catch (e) {
      print("Lỗi khi hiển thị QuickAlert: $e");
      return false;
    }
  }
}
