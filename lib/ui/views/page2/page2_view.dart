import 'package:final_app/ui/common/app_colors.dart';
import 'package:final_app/ui/views/page2/widget/body_table.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'page2_viewmodel.dart';

class Page2View extends StackedView<Page2ViewModel> {
  const Page2View({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    Page2ViewModel viewModel,
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
  Page2ViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      Page2ViewModel();
}
