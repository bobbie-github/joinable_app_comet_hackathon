
import 'dart:math';

import 'package:flutter/material.dart';

import '../../config/theme/color.dart';
import '../../config/theme/text_config.dart';


class ModelBaseSelect{
  String name;
  String value;
  ModelBaseSelect(this.name,this.value);
}
class BaseSelectDropdown extends StatelessWidget {
  const BaseSelectDropdown({Key? key, this.valueSelect, required this.title, required this.list, this.onChange}) : super(key: key);

  final valueSelect;
  final String title;
  final List<ModelBaseSelect> list;
  final onChange;
  @override
  Widget build(BuildContext context) {
    list.forEach((element) {
      print(element.name);
    });
    return   Container(
      // margin: EdgeInsets.only(left: 15, top: 10, right: 15),
      child: FormField<String>(
        builder: (FormFieldState<String> state) {
          return InputDecorator(
            decoration: InputDecoration(
              labelText: null,
              isDense: true,
              hintText: null,

              hintStyle: TextStyle(fontSize: 14),
              labelStyle: TextStyle(fontSize: 14),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFFDBE2E7),
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(2),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFFDBE2E7),
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(2),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: RedColor,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(2),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: RedColor,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(2),

              ),
              filled: true,
              fillColor: Colors.white,
              contentPadding:const EdgeInsets.symmetric(vertical: 7.0, horizontal: 7.0),
              suffixIconConstraints:
              const BoxConstraints(
                  minHeight: 40, minWidth: 40),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<ModelBaseSelect>(
                style:TextConfig.configText(fontsize: 14,color: TextColor.withOpacity(0.4)),
                hint:null,
                items: list.map<DropdownMenuItem<ModelBaseSelect>>(( ModelBaseSelect value) {
                  return DropdownMenuItem(
                    value: value,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // new CircleAvatar(
                        //   backgroundImage: new NetworkImage(value),
                        // ),
                        // Icon(valueItem.bank_logo),
                        SizedBox(
                          width: 15,
                        ),
                        Text(value.name.toString()),
                      ],
                    ),
                  );
                }).toList(),

                isExpanded: true,
                isDense: true,
                onChanged:onChange,
                value: valueSelect,

              ),
            ),
          );
        },
      ),
    );
  }
}
