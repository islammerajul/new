import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mental_health_app/first_page.dart';
import 'package:mental_health_app/model_classes/model_class1.dart';
import 'package:mental_health_app/model_classes/model_class2.dart';
import 'package:mental_health_app/segment/sliding_segment.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SlidingSement(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 00),
              child: Container(
                height: double.infinity,
                width: double.infinity,
                //color: Color(0xff2A5C80),
                color: Colors.blue[800],
                child: Column(
                  children: [
                    Expanded(
                        flex: 6,
                        child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 25),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Hi, Jared!",
                                          style: myTextStyle.copyWith(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          "23 Jan, 2021",
                                          style: myTextStyle.copyWith(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15,
                                              color: Colors.white70),
                                        ),
                                      ],
                                    ),
                                    Card(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                      color: Colors.blue[600],
                                      child: Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Icon(
                                          Icons.notifications,
                                          color: Colors.white,
                                          size: 30,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Container(
                                  height: 45,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Colors.blue[600],
                                  ),
                                  child: ListTile(
                                    leading:
                                        Icon(Icons.search, color: Colors.white),
                                    title: Text("Search",
                                        style:
                                            myTextStyle.copyWith(fontSize: 18)),
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "how do you feel?",
                                      style: myTextStyle,
                                    ),
                                    Icon(Icons.more_horiz, color: Colors.white)
                                  ],
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 20),
                                  child: Container(
                                    height: 120,
                                    width: double.infinity,
                                    child: ListView.builder(
                                        itemCount: Emoji.emojies().length,
                                        scrollDirection: Axis.horizontal,
                                        itemBuilder: ((context, index) {
                                          var e = Emoji.emojies();
                                          return Padding(
                                            padding: const EdgeInsets.only(
                                                right: 10),
                                            child: Column(
                                              children: [
                                                Container(
                                                  height: 80,
                                                  width: 90,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                      color: Colors.blue[600]),
                                                  child: Center(
                                                    child: Text(
                                                      "${e[index].emo}",
                                                      style:
                                                          myTextStyle.copyWith(
                                                              fontSize: 40),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                Text(
                                                  "${e[index].name}",
                                                  style: myTextStyle.copyWith(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.normal),
                                                ),
                                              ],
                                            ),
                                          );
                                        })),
                                  ),
                                )
                              ],
                            ))),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}





// Expanded(
//                   flex: 5,
//                   child: Container(
//                     padding: EdgeInsets.symmetric(horizontal: 25),
//                     width: double.infinity,
//                     height: double.infinity,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.only(
//                           topLeft: Radius.circular(30),
//                           topRight: Radius.circular(30)),
//                       color: Colors.white,
//                     ),
//                     child: Column(
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Container(
//                             alignment: Alignment.center,
//                             height: 10,
//                             width: 55,
//                             decoration: BoxDecoration(
//                                 color: Colors.blue[100],
//                                 borderRadius: BorderRadius.circular(20)),
//                           ),
//                         ),
//                         Container(
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Text(
//                                 "Excercise",
//                                 style: myTextStyle.copyWith(
//                                     color: Colors.black87,
//                                     fontWeight: FontWeight.bold),
//                               ),
//                               Icon(
//                                 Icons.more_horiz,
//                                 color: Colors.black87,
//                                 size: 30,
//                               )
//                             ],
//                           ),
//                         ),
//                         Expanded(
//                           child: Container(
//                             child: ListView.builder(
//                                 scrollDirection: Axis.vertical,
//                                 itemCount: Excercise.viewEx().length,
//                                 itemBuilder: ((context, index) {
//                                   var ex = Excercise.viewEx();
//                                   return ListTile(
//                                     leading: Container(
//                                       height: 50,
//                                       width: 50,
//                                       child: ex[index].i,
//                                       decoration: BoxDecoration(
//                                           color: ex[index].cr,
//                                           borderRadius:
//                                               BorderRadius.circular(15)),
//                                     ),
//                                     title: Text(
//                                       "${ex[index].title}",
//                                       style: myTextStyle.copyWith(
//                                           color: Colors.black87, fontSize: 18),
//                                     ),
//                                     subtitle: Text("${ex[index].sub}",
//                                         style: TextStyle(
//                                             color: Colors.black87,
//                                             fontSize: 14)),
//                                     trailing: Icon(Icons.more_horiz),
//                                   );
//                                 })),
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                 )