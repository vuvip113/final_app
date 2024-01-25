import 'package:final_app/ui/common/app_colors.dart';
import 'package:final_app/ui/common/global_images.dart';
import 'package:final_app/ui/common/ui_helpers.dart';
import 'package:final_app/ui/views/home/widget/components/snackbar_utils.dart';
import 'package:final_app/ui/views/page2/widget/widget_child/tt_vanban/chitiet_tttl/tt_tailieu.dart';
import 'package:final_app/ui/views/page2/widget/widget_child/tt_vanban/chitiet_tttl/tt_tailieu_hinhanh.dart';
import 'package:flutter/material.dart';

class tt_benphai extends StatelessWidget {
  const tt_benphai({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 18),
          decoration: BoxDecoration(
            color: blueLight,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 26),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                      color: purpleNormalHover,
                      offset: const Offset(4, 4),
                      blurRadius: 15,
                      spreadRadius: 1),
                ]),
            child: Expanded(
              child: Container(
                height: 580,
                width: 750,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      tt_tailieu_hinhanh(),
                      tt_tailieu(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        verticalSpaceSmall,
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    minimumSize: Size(200, 60),
                    shape: ContinuousRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  onPressed: () {
                    showTopRightSnackBar(
                      context,
                      'Bạn đã gửi yêu cầu thành công!',
                      'Bạn cần đợi yêu cầu của bạn được gửi tới Admin để được cấp lại mật khẩu tới, bạn có thể LIÊN HỆ với Admin qua E-mail để đẩy nhanh tiến độ.',
                      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                      textColor: const Color.fromARGB(255, 0, 0, 0),
                      iconData: Globalsvg.check,
                    );
                    Navigator.of(context).pop();
                  },
                  child: const Text(
                    "Dong",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  width: defaultPadding,
                ),
                Container(
                  padding: EdgeInsets.all(defaultPadding),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xfff37748),
                  ),
                  child: Row(
                    children: [
                      Text(
                        'Tao moi',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
