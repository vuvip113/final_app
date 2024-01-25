// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:final_app/ui/common/app_colors.dart';
import 'package:final_app/ui/views/home/widget/body_table.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: SafeArea(
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Expanded(
            flex: 1,
            child: Container(
                color: kcPrimaryColor,
                height: MediaQuery.of(context).size.height,
                child: Text("cai ben trai")),
          ),
          Expanded(
            flex: 5,
            child: Column(
              children: [
                Container(height: 77, color: kcLightGrey),
                BodyTable(),
              ],
            ),
          ),
        ]),
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}
