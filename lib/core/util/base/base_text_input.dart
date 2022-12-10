


import 'package:flutter/material.dart';

import '../../config/theme/color.dart';

class FormControllerBase extends StatelessWidget {
  const FormControllerBase({Key? key, required this.textEditingController, required this.labelText, required this.hintText, required this.validator}) : super(key: key);

  final TextEditingController textEditingController;
  final String labelText;
  final String hintText;
  final String validator;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(labelText,style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                SizedBox(height: 5,),
                TextFormField(
                  controller: textEditingController,
                  obscureText: false,
                  style: TextStyle(color: Colors.black45,fontSize: 18,decorationThickness: 0.0),
                  validator: (value) => value!.isEmpty
                      ? validator
                      : null,
                  decoration: InputDecoration(
                    labelText: null,
                    isDense: true,
                    hintText: hintText,

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
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}