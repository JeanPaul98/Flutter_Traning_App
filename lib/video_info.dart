import 'dart:convert';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import "colors.dart" as color;

class videoInfo extends StatefulWidget {
  const videoInfo({Key? key}) : super(key: key);

  @override
  State<videoInfo> createState() => _videoInfoState();
}

class _videoInfoState extends State<videoInfo> {

    List info = [];

  _initData() {
    DefaultAssetBundle.of(context).loadString("json/videoinfo.json").then((value) {
      info = json.decode(value);
    });
  }

  @override
  void initState() {
    super.initState();
    _initData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [
          color.AppColor.gradientFirst.withOpacity(0.9),
          color.AppColor.gradientSecond
        ],
        begin: const FractionalOffset(0.0, 0.4),
        end: Alignment.topRight,
      )),
      child: Column(children: [
        Container(
          padding: const EdgeInsets.only(top: 70, left: 30, right: 30),
          width: MediaQuery.of(context).size.width,
          height: 300,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(children: [
                Icon(
                  Icons.arrow_back_ios,
                  size: 20,
                  color: color.AppColor.secondPageIconColor,
                ),
                Expanded(child: Container()),
                Icon(
                  Icons.info_outline,
                  size: 20,
                  color: color.AppColor.secondPageIconColor,
                ),
              ]),
              const SizedBox(
                height: 30,
              ),
              Text(
                "Legs Toning",
                style: TextStyle(
                    fontSize: 25, color: color.AppColor.secondPageTitleColor),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                "and Glutes workout",
                style: TextStyle(
                    fontSize: 25, color: color.AppColor.secondPageTitleColor),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Container(
                    width: 90,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          colors: [
                            color.AppColor.secondPageContainerGradien1stColor,
                            color.AppColor.secondPageContainerGradien2ndColor
                          ],
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                        )),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.timer,
                            size: 20,
                            color: color.AppColor.secondPageIconColor,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "68 min",
                            style: TextStyle(
                              fontSize: 16,
                              color: color.AppColor.secondPageIconColor,
                            ),
                          )
                        ]),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 200,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          colors: [
                            color.AppColor.secondPageContainerGradien1stColor,
                            color.AppColor.secondPageContainerGradien2ndColor
                          ],
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                        )),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.handyman_outlined,
                            size: 20,
                            color: color.AppColor.secondPageIconColor,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Resistent band ,kettebell",
                            style: TextStyle(
                              fontSize: 16,
                              color: color.AppColor.secondPageIconColor,
                            ),
                          )
                        ]),
                  ),
                ],
              ),
            ],
          ),
        ),
        Expanded(
            child: Container(
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topRight: Radius.circular(70))),
          child: Column(
            children: [
              const SizedBox(height: 30,),
              Row(
                children: [
                  const SizedBox(width: 30,), 
                  Text(
                    "Circuit 1: legs Toning",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: color.AppColor.circuitsColor,
                    ),
                  ),
                  Expanded(child: Container()),
                  Row(
                    children: [
                      Icon(Icons.loop, size: 30, color: color.AppColor.loopColor),
                      const SizedBox(width: 10,),
                      Text(
                        "3 sets",
                        style: TextStyle(
                          fontSize: 15,
                          color: color.AppColor.setsColor,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(width: 20,),
                ],
              )
            ],
          ),
        ))
      ]),
    ));
  }
}
