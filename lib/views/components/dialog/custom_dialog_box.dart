import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jifunze/constants/constants.dart';
import 'package:jifunze/constants/enum.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomDialogBox extends StatefulWidget {
  final String title, descriptions, text;
  final int number1, number2;
  final MathOperation operation;

  const CustomDialogBox(
      {Key key,
      this.title,
      this.descriptions,
      this.text,
      this.number1,
      this.number2,
      this.operation})
      : super(key: key);

  @override
  _CustomDialogBoxState createState() => _CustomDialogBoxState();
}

class _CustomDialogBoxState extends State<CustomDialogBox> {
  FocusNode _answerFocusNode = FocusNode();
  TextEditingController _answerTextEditingController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Constants.padding),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: contentBox(context),
    );
  }

  contentBox(context) {
    return Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(
              left: Constants.padding,
              top: Constants.avatarRadius + Constants.padding,
              right: Constants.padding,
              bottom: Constants.padding),
          margin: EdgeInsets.only(top: Constants.avatarRadius),
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.white,
              borderRadius: BorderRadius.circular(Constants.padding),
              boxShadow: [
                BoxShadow(
                    color: Colors.black, offset: Offset(0, 10), blurRadius: 10),
              ]),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  widget.title,
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  widget.descriptions,
                  style: TextStyle(fontSize: 14),
                  textAlign: TextAlign.center,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '${widget.number1} + ${widget.number2}',
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(),
                    ),
                    Text('Answer:'),
                    Expanded(
                      child: TextFormField(
                        focusNode: _answerFocusNode,
                        controller: _answerTextEditingController,
                        validator: (val) {
                          if (val.isEmpty)
                            return 'Enter the answer';
                          else
                            return null;
                        },
                      ),
                    ),
                    Expanded(
                      child: Container(),
                    ),
                  ],
                ),
                SizedBox(
                  height: 22,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    children: [
                      Spacer(),
                      Expanded(
                        child: FlatButton(
                            color: Colors.red,
                            textColor: Colors.white,
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              'Cancel',
                              style: TextStyle(fontSize: 18),
                            )),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: FlatButton(
                            color: Colors.green,
                            textColor: Colors.white,
                            focusColor: Colors.white,
                            onPressed: () {
                              Navigator.of(context).pop();
                              if (_formKey.currentState.validate()) {
                                if (widget.number1 + widget.number2 ==
                                    int.parse(
                                        _answerTextEditingController.text)) {
                                  _launchURL();
                                } else {
                                  Scaffold.of(context).showSnackBar(SnackBar(
                                    content: Text("Sending Message"),
                                  ));
                                }
                              }
                            },
                            child: Text(
                              'Submit',
                              style: TextStyle(fontSize: 18),
                            )),
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: Constants.padding,
          right: Constants.padding,
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: Constants.avatarRadius,
            child: ClipRRect(
                borderRadius:
                    BorderRadius.all(Radius.circular(Constants.avatarRadius)),
                child: Image.asset("assets/icons/calculator.png")),
          ),
        ),
      ],
    );
  }

  _launchURL() async {
    const url = 'https://flutter.dev';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
