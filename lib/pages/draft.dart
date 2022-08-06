// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class Draftpage extends StatelessWidget {
  const Draftpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
          child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        backgroundColor: Colors.transparent,
                        contentPadding: EdgeInsets.zero,
                        content: Container(
                          height: 400,
                          width: 100,
                          child: Column(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(10),
                                        topLeft: Radius.circular(10)),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Quick add member",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w100),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                  flex: 4,
                                  child: Container(
                                    color: Colors.grey,
                                    child: Column(
                                      children: [
                                        CircleAvatar(
                                          radius: 40.0,
                                          backgroundImage: AssetImage(
                                            "assets/images/logo/vector.jpg",
                                          ),
                                          backgroundColor: Colors.white,
                                        ),
                                        Text(
                                            "Scan Member's QR code to Quick Add")
                                      ],
                                    ),
                                  )),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10)),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(40),
                                    child: Center(
                                      child: RaisedButton(
                                        color: Colors.black,
                                        textColor: Colors.white,
                                        shape: StadiumBorder(
                                          side: BorderSide(
                                              color: Colors.white, width: 1),
                                        ),
                                        onPressed: () {},
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('Add members'),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    });
              },
              child: Text("Add Member")),
          SizedBox(
            height: 20,
          ),
          // Container(
          //   height: 200,
          //   width: 100,
          //   child: Column(
          //     children: [
          //       Expanded(
          //           flex: 1,
          //           child: Container(
          //             decoration: BoxDecoration(
          //               color: Colors.black,
          //               borderRadius: BorderRadius.only(
          //                   topRight: Radius.circular(10),
          //                   topLeft: Radius.circular(10)),
          //             ),
          //           )),
          //       Expanded(
          //           flex: 2,
          //           child: Container(
          //             color: Colors.white,
          //           )),
          //       Expanded(
          //         flex: 1,
          //         child: Container(
          //           decoration: BoxDecoration(
          //             color: Colors.black,
          //             borderRadius: BorderRadius.only(
          //                 bottomLeft: Radius.circular(10),
          //                 bottomRight: Radius.circular(10)),
          //           ),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
        ],
      )),
    );
  }
}
