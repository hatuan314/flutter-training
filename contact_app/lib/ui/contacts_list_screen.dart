import 'package:contact_app/common/constant/string_color.dart';
import 'package:contact_app/ui/base_widget.dart';
import 'package:contact_app/ui/item_contact_widget.dart';
import 'package:contact_app/view_model/contacts_list_vm.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContactsListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: AppColor.primaryColor,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: SizedBox(),
          title: Text(
            'Contacts List',
            style: TextStyle(
                fontSize: ScreenUtil().setSp(23),
                color: AppColor.titleAppBarColor,
                fontWeight: FontWeight.bold),
          ),
          elevation: 0,
        ),
        body: BaseWidget<ContactsListVM>(
            createViewModel: ContactsListVM(),
            onModelReady: (viewModel) => ContactsListVM().askPermissions(),
            builder: (context, viewModel, child) {
              return Container(
                margin: EdgeInsets.only(top: ScreenUtil().setHeight(110)),
                height: double.infinity,
                decoration: BoxDecoration(
                    color: AppColor.backgroundBodyColor,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(20))),
                child: viewModel.isBusy
                    ? Text('Loading')
                    : ListView.builder(
                        itemCount: 20,
                        itemBuilder: (context, index) => ItemContactWidget()),
              );
            }),
      ),
    );
  }
}
