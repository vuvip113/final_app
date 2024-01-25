// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:final_app/ui/common/app_colors.dart';
import 'package:final_app/ui/common/app_strings.dart';
import 'package:final_app/ui/common/global_images.dart';
import 'package:final_app/ui/common/ui_helpers.dart';
import 'package:final_app/ui/views/home/widget/components/CustomBTNwithIcon.dart';
import 'package:final_app/ui/views/home/widget/components/CustomDialogWidget.dart';
import 'package:final_app/ui/views/home/widget/components/dropdown_button.dart';
import 'package:final_app/ui/views/home/widget/components/icon_top_bar.dart';
import 'package:flutter/material.dart';

import 'components/search_field.dart';

class HeaderTable extends StatelessWidget {
  const HeaderTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      child: Row(
        children: [
          Container(
            child: Text(
              hienthi_txt,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                // fontSize: 12,
              ),
            ),
          ),
          horizontalSpaceSmall,
          Row(
            children: [
              Container(
                height: 35,
                width: 40,
                decoration: BoxDecoration(
                  // color: secondaryColor,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                  border: Border.all(color: Colors.grey),
                ),
                child: Center(
                  child: MyDropdownButton(),
                ),
              ),
              horizontalSpaceSmall,
              Text("Mục"),
            ],
          ),
          horizontalSpaceSmall,
          Expanded(
              child: SearchField(
            hintText: "Search...",
            fillColor: Colors.transparent,
            borderSide: BorderSide(color: Color(0xfff3f3f3), width: 1),
          )),
          SizedBox(
            width: defaultPadding / 2,
          ),
          InkWell(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => const CustomDialogWidget(),
              );
            },
            child: Container(
                padding: const EdgeInsets.only(
                  top: 5,
                  bottom: 5,
                  right: 12,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0xfff37748)),
                child: Row(
                  children: [
                    IconsTopBar(
                        iconPath: Globalsvg.add,
                        onPressed: () {},
                        horizontalPadding: 8,
                        verticalPadding: 8,
                        color: Colors.white),
                    const Text(
                      'Thêm giá/kệ mới ',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    ),
                  ],
                )),
          ),
          Spacer(),
          CustomButton(
              text: "Chon Nhieu",
              iconColor: greyNormal,
              iconPath: 'assets/svg/new_window.svg',
              onPressed: () {}),
          horizontalSpaceSmall,
          CustomButton(
              text: "Xuất file Excel",
              iconColor: Colors.transparent,
              iconPath: Globalsvg.exelFileIcon,
              onPressed: () {}),
        ],
      ),
    );
  }
}
