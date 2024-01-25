// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:final_app/model/myData.dart';
import 'package:final_app/provider/myHomePageProvider.dart';
import 'package:final_app/ui/common/app_colors.dart';
import 'package:final_app/ui/common/global_images.dart';
import 'package:final_app/ui/common/ui_helpers.dart';
import 'package:final_app/ui/views/home/widget/components/fetchdata/detail_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class VerticalDividerCell extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return VerticalDivider(
      thickness: 1.2,
      indent: 10,
      endIndent: 10,
      color: whiteMSNormal,
    );
  }
}

class FetchData extends StatelessWidget {
  const FetchData({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            child: ChangeNotifierProvider<MyHomePageProvider>(
              create: (context) => MyHomePageProvider(),
              child: Consumer<MyHomePageProvider>(
                builder: (context, provider, child) {
                  if (provider.data == null) {
                    provider.initData(context);
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  return SingleChildScrollView(
                    // shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: DataTable(
                          headingRowHeight: 60,
                          horizontalMargin: 10,
                          headingTextStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize:
                                16, // Điều chỉnh kích thước phông chữ của header
                          ),
                          dividerThickness: 1.0, // Độ dày của đường chia cột
                          columnSpacing: 10, // Khoảng cách giữa các cột
                          columns: [
                            DataColumn(
                              label: Text("teest1"),
                              tooltip: "test 1 hover",
                            ),
                            DataColumn(label: VerticalDividerCell()),
                            DataColumn(
                              label: Text("first name"),
                              tooltip: "test 1 hover",
                            ),
                            DataColumn(label: VerticalDividerCell()),
                            DataColumn(
                              label: Text("last name"),
                              tooltip: "test 1 hover",
                            ),
                            DataColumn(label: VerticalDividerCell()),
                            DataColumn(
                              label: Text("email"),
                              tooltip: "test 1 hover",
                            ),
                            DataColumn(label: VerticalDividerCell()),
                            DataColumn(
                              label: Text("Phone"),
                              tooltip: "test 1 hover",
                            ),
                            DataColumn(label: VerticalDividerCell()),
                            DataColumn(
                              label: Text('Thao tac'),
                              tooltip: 'actions for the user',
                            ),
                          ],
                          rows: provider.data!.results!
                              .asMap()
                              .map(
                                (index, data) => MapEntry(
                                  index,
                                  DataRow(
                                    color: MaterialStateColor.resolveWith(
                                      (Set<MaterialState> states) {
                                        // Màu xen kẽ giữa các hàng
                                        return index % 2 == 0
                                            ? purpleNormal
                                            : Colors.transparent;
                                      },
                                    ),
                                    cells: [
                                      DataCell((data.verified == true)
                                          ? Icon(
                                              Icons.verified_user,
                                              color: Colors.green,
                                            )
                                          : Icon(Icons.cancel)),
                                      DataCell(VerticalDivider(
                                        thickness: 1.2,
                                        indent: 10,
                                        endIndent: 10,
                                        color: whiteMSNormal,
                                      )),
                                      DataCell(Text(data.firstName.toString())),
                                      DataCell(VerticalDivider(
                                        thickness: 1.2,
                                        indent: 10,
                                        endIndent: 10,
                                        color: whiteMSNormal,
                                      )),
                                      DataCell(
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: defaultPadding),
                                          child: Text(data.lastName.toString()),
                                        ),
                                      ),
                                      DataCell(VerticalDivider(
                                        thickness: 1.2,
                                        indent: 10,
                                        endIndent: 10,
                                        color: whiteMSNormal,
                                      )),
                                      DataCell(
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: defaultPadding),
                                          child: Text(data.email.toString()),
                                        ),
                                      ),
                                      DataCell(VerticalDivider(
                                        thickness: 1.2,
                                        indent: 10,
                                        endIndent: 10,
                                        color: whiteMSNormal,
                                      )),
                                      DataCell(Text(data.phone.toString())),
                                      DataCell(VerticalDivider(
                                        thickness: 1.2,
                                        indent: 10,
                                        endIndent: 10,
                                        color: whiteMSNormal,
                                      )),
                                      DataCell(
                                        Row(
                                          children: [
                                            IconButton(
                                              icon: SvgPicture.asset(
                                                Globalsvg.info,
                                              ),
                                              onPressed: () {
                                                showDialog(
                                                  context: context,
                                                  builder:
                                                      (BuildContext context) {
                                                    return DetailDialog(
                                                      data: data,
                                                    );
                                                  },
                                                );
                                              },
                                            ),
                                            IconButton(
                                              icon: SvgPicture.asset(
                                                Globalsvg.editSquare,
                                              ),
                                              onPressed: () {
                                                provider.showEditDialog(
                                                    context, data as Results);
                                              },
                                            ),
                                            IconButton(
                                              icon: SvgPicture.asset(
                                                Globalsvg.delete,
                                              ),
                                              onPressed: () async {
                                                // Xử lý khi nhấn nút "Xóa"
                                                bool confirm = await provider
                                                    .showConfirmation(context,
                                                        data as Results);
                                                if (confirm) {
                                                  // Xử lý khi người dùng xác nhận xóa
                                                  print("xóa");
                                                } else {
                                                  // Xử lý khi người dùng huỷ bỏ
                                                  print("Huỷ bỏ xóa");
                                                }
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                    // onSelectChanged: (isSelected) {
                                    //   print('Row selected: $isSelected');
                                    // },
                                  ),
                                ),
                              )
                              .values
                              .toList(),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
