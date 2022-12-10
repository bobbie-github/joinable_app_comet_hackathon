

import 'package:app_comet_hackathon/core/config/theme/color.dart';
import 'package:app_comet_hackathon/core/config/theme/text_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';
import '../../../../../core/config/routes/router.dart';
import '../../../../../core/util/base/base_select_dropdown.dart';
import '../../../../../core/util/base/base_text_input.dart';
import '../../../../../core/util/util_format.dart';
import '../base/base.dart';
class CreateInfoUser extends StatefulWidget {
  const CreateInfoUser({Key? key}) : super(key: key);

  @override
  State<CreateInfoUser> createState() => _CreateInfoUserScreenState();
}

extension PasswordValidator on String {
  bool isValidPassword() {
    return RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$').hasMatch(this);
  }
}

class BankListDataModel{
  String bank_name;
  String bank_logo;
  BankListDataModel(this.bank_name,this.bank_logo);
}
class _CreateInfoUserScreenState extends State<CreateInfoUser> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final textEditingController = TextEditingController();
  void validateLogin() {
    final FormState? form = _formKey.currentState;
    if (form!.validate()) {
      print("post");
    } else {
      print('Form 2@@@@@@@');
    }
  }

  ModelBaseSelect? _valueSelect;


  List<ModelBaseSelect> _select=[
    ModelBaseSelect("male","male"),
    ModelBaseSelect("female","female"),
    ModelBaseSelect("other","other"),
  ];

  var JoinedDate = '';

  XFile? image;

  final ImagePicker picker = ImagePicker();

  void _onDropDownItemSelected(ModelBaseSelect modelBaseSelect) {
    setState(() {
      _valueSelect = modelBaseSelect;
    });
  }


  //we can upload image from camera or from gallery based on parameter
  Future getImage(ImageSource media) async {
    var img = await picker.pickImage(source: media);
    print(media);
    setState(() {
      image = img;
    });
  }

  void selectImage() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            title: Text('Please choose media to select' ,style: TextConfig.configText(fontsize: 16),),
            content: Container(
              height: MediaQuery.of(context).size.height / 6,
              child: Column(
                children: [
                  ElevatedButton(
                    //if user click this button, user can upload image from gallery
                    onPressed: () {
                      Navigator.pop(context);
                      getImage(ImageSource.gallery);
                    },
                    child: Row(
                      children: [
                        Icon(Icons.image),
                        Text('From Gallery'),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    //if user click this button. user can upload image from camera
                    onPressed: () {
                      Navigator.pop(context);
                      getImage(ImageSource.camera);
                    },
                    child: Row(
                      children: [
                        Icon(Icons.camera),
                        Text('From Camera'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }




  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: PrimaryColor,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            margin: const EdgeInsets.only(left: 10),
            padding: const EdgeInsets.all(10.0),
            child: SvgPicture.asset(
              'assets/svg/back.svg',
              color: WhiteColor,
            ),
          ),
        ),
        leadingWidth: 50,
        title: Text(
          'Create Information',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        toolbarHeight: 40,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        color: PrimaryColor,
        child: Container(
          width: MediaQuery.of(context).size.width,
          color: WhiteColor,
          child: ScrollConfiguration(
            behavior: const ScrollBehavior().copyWith(overscroll: false),
            child: ListView(
              children: [
                SingleChildScrollView(
                  child: Form(
                    key: _formKey,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Create your Information",
                              style: TextConfig.configText(
                                  fontsize: 20, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              "Use a minimum of 10 characters, including uppercase letters, lowercase letters,and numbers",
                              style: TextConfig.configText(
                                  fontsize: 12, fontWeight: FontWeight.normal,color: TextColor.withOpacity(0.5)),
                            ),

                            SizedBox(height: 15,),
                            Center(
                              child: ProfileEdit(
                                onTap: (){
                                  selectImage();
                                },
                              ),
                            ),


                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 0),
                                child: FormControllerBase(
                                  textEditingController: textEditingController,
                                  labelText: 'Name',
                                  hintText: '',
                                  validator: '',
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),

                            Text('Gender',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                            SizedBox(
                              height: 5,
                            ),

                         Container(
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
                                  contentPadding:const EdgeInsets.symmetric(vertical: 9.0, horizontal: 7.0),
                                ),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton<ModelBaseSelect>(
                                    style:TextConfig.configText(fontsize: 14,color: TextColor.withOpacity(0.4)),
                                    hint:null,
                                    items: _select.map<DropdownMenuItem<ModelBaseSelect>>((value) {
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
                                              width: 0,
                                            ),
                                            Text(value.name),
                                          ],
                                        ),
                                      );
                                    }).toList(),

                                    isExpanded: true,
                                    isDense: true,
                                    onChanged:(onChange){
                                      print(onChange);
                                      _onDropDownItemSelected(onChange!);

                                    },
                                    value: _valueSelect,

                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                            SizedBox(
                              height: 5,
                            ),
                            Text('Joined Date',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),                            InkWell(
                              onTap: ()async{
                                DateTime? pickedDate = await showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime(1950),
                                    //DateTime.now() - not to allow to choose before today.
                                    lastDate: DateTime(2100));

                                if (pickedDate != null) {
                                  String formattedDate =  Utils.dateFormat(pickedDate);
                                  setState(() {
                                    JoinedDate = formattedDate;
                                  });
                                } else {}
                              },
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 0),
                                child: Container(
                                  padding: EdgeInsets.only(top: 9, bottom: 9),
                                  decoration: BoxDecoration(
                                      // color: Colors.lightBlue[700],
                                      border: Border.all(color: Color(0xFFDBE2E7))),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(width: 5,),
                                      Text(
                                        '$JoinedDate',
                                        style: TextConfig.configText(
                                            fontsize: 16,
                                            fontWeight: FontWeight.normal,
                                            color: TextColor.withOpacity(0.5)),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),

                            InkWell(
                              onTap: (){
                                Navigator.pushNamed(context, AppRoute.createCareerActivity);
                              },
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 0),
                                child: Container(
                                  padding: EdgeInsets.only(top: 9, bottom: 9),
                                  decoration: BoxDecoration(
                                      color: Colors.lightBlue[700],
                                      border: Border.all(color: WhiteColor)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Continue',
                                        style: TextConfig.configText(
                                            fontsize: 16,
                                            fontWeight: FontWeight.normal,
                                            color: WhiteColor),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
