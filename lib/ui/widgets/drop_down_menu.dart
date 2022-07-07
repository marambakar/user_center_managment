import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:user_center_managment/constants/app_assets.dart';
import 'package:user_center_managment/constants/app_colors.dart';
import 'package:user_center_managment/models/drop_down_menu_item.dart';

class DropDownMenu extends StatefulWidget {
  String initialValue;

  DropDownMenu({
    required this.initialValue,
  });
  @override
  State<StatefulWidget> createState() => _DropDownMenuState();
}

class _DropDownMenuState extends State<DropDownMenu> {
  DropDownMenuItemm _selectedValue =
      new DropDownMenuItemm(name: "中國人", flag: 'assets/images/download.jpg');
  List<DropDownMenuItemm> images = [
    DropDownMenuItemm(name: "中國人", flag: AppAssets.icon2),
    DropDownMenuItemm(name: "English", flag: AppAssets.icon1),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 13,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          border: Border.all(color: AppColors.grayLabel)),
      child: DropdownButton<DropDownMenuItemm>(
        underline: SizedBox(),
        items: images.map<DropdownMenuItem<DropDownMenuItemm>>(
            (DropDownMenuItemm value) {
          return DropdownMenuItem<DropDownMenuItemm>(
            value: value,
            child: Container(
              margin: EdgeInsets.all(10),
              child: Row(
                children: [
                  Image(
                    image: AssetImage(value.flag),
                    height: MediaQuery.of(context).size.height*0.021,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(value.name.toString()),
                ],
              ),
            ),
          );
        }).toList(),
        value: _selectedValue == null
            ? _selectedValue
            : images.where((i) => i.name == _selectedValue.name).first
                as DropDownMenuItemm,
        onChanged: (DropDownMenuItemm? newValue) {
          setState(() {
            _selectedValue = newValue!;
          });
        },
      ),
    );
  }
}
