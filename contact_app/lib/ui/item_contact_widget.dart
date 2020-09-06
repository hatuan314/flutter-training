import 'package:contact_app/common/constant/string_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemContactWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: ScreenUtil().setHeight(6),
          horizontal: ScreenUtil().setWidth(22)),
      child: Row(
        children: <Widget>[
          SizedBox(
            width: ScreenUtil().setWidth(50),
            height: ScreenUtil().setHeight(50),
            child: CircleAvatar(
              backgroundColor: AppColor.secondColor,
              child: Text(
                'HT',
                style: TextStyle(
                    fontSize: ScreenUtil().setSp(18),
                    fontWeight: FontWeight.bold,
                    color: AppColor.titleAppBarColor),
              ),
            ),
          ),
          SizedBox(
            width: ScreenUtil().setWidth(20),
          ),
          Column(
            children: <Widget>[
              Text('Hoang Tuan',
                  style: TextStyle(
                      fontSize: ScreenUtil().setSp(18),
                      color: AppColor.textColor)),
              SizedBox(
                height: ScreenUtil().setHeight(4),
              ),
              Text('0123456789',
                  style: TextStyle(
                      fontSize: ScreenUtil().setSp(18),
                      color: AppColor.textColor)),
            ],
          )
        ],
      ),
    );
  }
}
