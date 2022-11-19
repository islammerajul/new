import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mental_health_app/first_page.dart';
import 'package:mental_health_app/model_classes/model_class2.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class SlidingSement extends StatefulWidget {
  const SlidingSement({super.key});

  @override
  State<SlidingSement> createState() => _SlidingSementState();
}

class _SlidingSementState extends State<SlidingSement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SlidingUpPanel(
        backdropEnabled: true,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25), topRight: Radius.circular(25)),
        collapsed: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25), topRight: Radius.circular(25)),
              color: Colors.blueGrey),
          child: Center(
              child: Text(
            "Show more features",
            style: TextStyle(color: Colors.white),
          )),
        ),
        panel: Container(
          padding: EdgeInsets.symmetric(horizontal: 25),
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            color: Colors.white,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  alignment: Alignment.center,
                  height: 10,
                  width: 55,
                  decoration: BoxDecoration(
                      color: Colors.blue[100],
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Excercise",
                      style: myTextStyle.copyWith(
                          color: Colors.black87, fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.more_horiz,
                      color: Colors.black87,
                      size: 30,
                    )
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: Excercise.viewEx().length,
                      itemBuilder: ((context, index) {
                        var ex = Excercise.viewEx();
                        return ListTile(
                          leading: Container(
                            height: 50,
                            width: 50,
                            child: ex[index].i,
                            decoration: BoxDecoration(
                                color: ex[index].cr,
                                borderRadius: BorderRadius.circular(15)),
                          ),
                          title: Text(
                            "${ex[index].title}",
                            style: myTextStyle.copyWith(
                                color: Colors.black87, fontSize: 18),
                          ),
                          subtitle: Text("${ex[index].sub}",
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 14)),
                          trailing: Icon(Icons.more_horiz),
                        );
                      })),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
