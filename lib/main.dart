import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Settings',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SettingPageUI(),
    );
  }
}

class SettingPageUI extends StatefulWidget {
  @override
  SettingPageUIState createState() => SettingPageUIState();
}

class SettingPageUIState extends State<SettingPageUI> {
  bool valnotify1 = true;
  String? option;

  onChangeFunction1(bool newValue1) {
    setState(() {
      valnotify1 = newValue1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Settings",
          style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w700,
              fontFamily: 'Plus Jakarta Sans',
              color: Color(0xFF2C2C2C)),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xFFe0f5f0), Color(0xFFfbe1df)])),
          child: Align(
            alignment: Alignment.centerLeft,
            child: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFe0f5f0), Color(0xFFfbe1df)],
            stops: [0.1, 0.5],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            buildAccountOption(context, "Languages"),
            Divider(
              height: 0,
              thickness: 0.5,
            ),
            buildAccountOption(context, "Country"),
            Divider(
              height: 0,
              thickness: 0.5,
            ),
            buildNotificationOption(
                "Push Notification", valnotify1, onChangeFunction1),
          ],
        ),
      ),
    );
  }

  Padding buildNotificationOption(
      String title, bool value, Function onChangeMethod) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,
              style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Plus Jakarta Sans',
                  color: Color(0xFF2C2C2C))),
          Transform.scale(
            scaleX: 0.7,
            scaleY: 0.7,
            alignment: Alignment.topRight,
            child: CupertinoSwitch(
              activeColor: Color(0xFF8D71FF),
              trackColor: Colors.grey,
              value: value,
              onChanged: (bool newValue) {
                onChangeMethod(newValue);
              },
            ),
          ),
        ],
      ),
    );
  }

  GestureDetector buildAccountOption(BuildContext context, String title) {
    return GestureDetector(
      onTap: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text(
                  "App Languages",
                  style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Plus Jakarta Sans',
                      color: Color(0xFF2C2C2C)),
                ),
                content: Container(
                  height: 500,
                  width: 350,
                  child: ListView(
                    children: [
                      Divider(),
                      RadioListTile(
                        title: Text(
                          "System default",
                          style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Plus Jakarta Sans',
                              color: Color(0xFF2C2C2C)),
                        ),
                        value: "System default",
                        groupValue: option,
                        activeColor: Color(0xFF8D71FF),
                        onChanged: (value) {
                          setState(() {
                            option = value.toString();
                          });
                        },
                      ),
                      RadioListTile(
                        title: Text(
                          "Acehnese",
                          style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Plus Jakarta Sans',
                              color: Color(0xFF2C2C2C)),
                        ),
                        value: "Acehnese",
                        groupValue: option,
                        activeColor: Color(0xFF8D71FF),
                        onChanged: (value) {
                          setState(() {
                            option = value.toString();
                          });
                        },
                      ),
                      RadioListTile(
                        title: Text(
                          "Afar",
                          style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Plus Jakarta Sans',
                              color: Color(0xFF2C2C2C)),
                        ),
                        value: "Afar",
                        groupValue: option,
                        activeColor: Color(0xFF8D71FF),
                        onChanged: (value) {
                          setState(() {
                            option = value.toString();
                          });
                        },
                      ),
                      RadioListTile(
                        title: Text(
                          "Afrikaans",
                          style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Plus Jakarta Sans',
                              color: Color(0xFF2C2C2C)),
                        ),
                        value: "Afrikaans",
                        groupValue: option,
                        activeColor: Color(0xFF8D71FF),
                        onChanged: (value) {
                          setState(() {
                            option = value.toString();
                          });
                        },
                      ),
                      RadioListTile(
                        title: Text(
                          "Albanian",
                          style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Plus Jakarta Sans',
                              color: Color(0xFF2C2C2C)),
                        ),
                        value: "Albanian",
                        groupValue: option,
                        activeColor: Color(0xFF8D71FF),
                        onChanged: (value) {
                          setState(() {
                            option = value.toString();
                          });
                        },
                      ),
                      RadioListTile(
                        title: Text(
                          "Amharic",
                          style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Plus Jakarta Sans',
                              color: Color(0xFF2C2C2C)),
                        ),
                        value: "Amharic",
                        groupValue: option,
                        activeColor: Color(0xFF8D71FF),
                        onChanged: (value) {
                          setState(() {
                            option = value.toString();
                          });
                        },
                      ),
                      RadioListTile(
                        title: Text(
                          "Anlo",
                          style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Plus Jakarta Sans',
                              color: Color(0xFF2C2C2C)),
                        ),
                        value: "Anlo",
                        groupValue: option,
                        activeColor: Color(0xFF8D71FF),
                        onChanged: (value) {
                          setState(() {
                            option = value.toString();
                          });
                        },
                      ),
                      RadioListTile(
                        title: Text(
                          "Arabic",
                          style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Plus Jakarta Sans',
                              color: Color(0xFF2C2C2C)),
                        ),
                        value: "Arabic",
                        groupValue: option,
                        activeColor: Color(0xFF8D71FF),
                        onChanged: (value) {
                          setState(() {
                            option = value.toString();
                          });
                        },
                      ),
                      RadioListTile(
                        title: Text(
                          "Aramaic",
                          style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Plus Jakarta Sans',
                              color: Color(0xFF2C2C2C)),
                        ),
                        value: "Aramaic",
                        groupValue: option,
                        activeColor: Color(0xFF8D71FF),
                        onChanged: (value) {
                          setState(() {
                            option = value.toString();
                          });
                        },
                      ),
                      RadioListTile(
                        title: Text(
                          "Armenian",
                          style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Plus Jakarta Sans',
                              color: Color(0xFF2C2C2C)),
                        ),
                        value: "Armenian",
                        groupValue: option,
                        activeColor: Color(0xFF8D71FF),
                        onChanged: (value) {
                          setState(() {
                            option = value.toString();
                          });
                        },
                      ),
                      RadioListTile(
                        title: Text(
                          "Askunu",
                          style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Plus Jakarta Sans',
                              color: Color(0xFF2C2C2C)),
                        ),
                        value: "Askunu",
                        groupValue: option,
                        activeColor: Color(0xFF8D71FF),
                        onChanged: (value) {
                          setState(() {
                            option = value.toString();
                          });
                        },
                      ),
                      RadioListTile(
                        title: Text(
                          "Assamese",
                          style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Plus Jakarta Sans',
                              color: Color(0xFF2C2C2C)),
                        ),
                        value: "Assamese",
                        groupValue: option,
                        activeColor: Color(0xFF8D71FF),
                        onChanged: (value) {
                          setState(() {
                            option = value.toString();
                          });
                        },
                      ),
                      RadioListTile(
                        title: Text(
                          "Azerbaijani",
                          style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Plus Jakarta Sans',
                              color: Color(0xFF2C2C2C)),
                        ),
                        value: "Azerbaijani",
                        groupValue: option,
                        activeColor: Color(0xFF8D71FF),
                        onChanged: (value) {
                          setState(() {
                            option = value.toString();
                          });
                        },
                      ),
                      Divider(),
                    ],
                  ),
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text("Cancel"),
                  ),
                ],
              );
            });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 18),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title,
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Plus Jakarta Sans',
                    color: Color(0xFF2C2C2C))),
            Icon(Icons.arrow_forward_ios, color: Color(0xFF2C2C2C), size: 10)
          ],
        ),
      ),
    );
  }
}
