import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Points_Counter(),
  ));
}

class Points_Counter extends StatefulWidget {
  const Points_Counter({super.key});

  @override
  State<Points_Counter> createState() => _Points_CounterState();
}

class _Points_CounterState extends State<Points_Counter> {
  int A = 0, B = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          "Points Counter",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    const Text(
                      "Team A",
                      style: TextStyle(color: Colors.black, fontSize: 25),
                    ),
                    Text(
                      "$A",
                      style:
                          const TextStyle(color: Colors.black, fontSize: 130),
                    ),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              A++;
                            });
                          },
                          child: Container(
                            margin: const EdgeInsets.only(bottom: 10, left: 10),
                            alignment: Alignment.center,
                            width: 100,
                            height: 30,
                            color: Colors.green,
                            child: const Text(
                              "add 1 points",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              A += 2;
                            });
                          },
                          child: Container(
                            margin: const EdgeInsets.only(bottom: 10, left: 10),
                            alignment: Alignment.center,
                            width: 100,
                            height: 30,
                            color: Colors.green,
                            child: const Text(
                              "add 2 points",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              A += 3;
                            });
                          },
                          child: Container(
                            margin: const EdgeInsets.only(bottom: 10, left: 10),
                            alignment: Alignment.center,
                            width: 100,
                            height: 30,
                            color: Colors.green,
                            child: const Text(
                              "add 3 points",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 300,
                  child: VerticalDivider(
                    thickness: 1,
                    color: Colors.grey,
                  ),
                ),
                Column(
                  children: [
                    const Text(
                      "Team B",
                      style: TextStyle(color: Colors.black, fontSize: 25),
                    ),
                    Text(
                      "$B",
                      style:
                          const TextStyle(color: Colors.black, fontSize: 130),
                    ),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              B++;
                            });
                          },
                          child: Container(
                            margin: const EdgeInsets.only(bottom: 10, left: 10),
                            alignment: Alignment.center,
                            width: 100,
                            height: 30,
                            color: Colors.green,
                            child: const Text(
                              "add 1 points",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              B += 2;
                            });
                          },
                          child: Container(
                            margin: const EdgeInsets.only(bottom: 10, left: 10),
                            alignment: Alignment.center,
                            width: 100,
                            height: 30,
                            color: Colors.green,
                            child: const Text(
                              "add 2 points",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              B += 3;
                            });
                          },
                          child: Container(
                            margin: const EdgeInsets.only(bottom: 10, left: 10),
                            alignment: Alignment.center,
                            width: 100,
                            height: 30,
                            color: Colors.green,
                            child: const Text(
                              "add 3 points",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          InkWell(
            onTap: () {
              setState(() {
                A = 0;
                B = 0;
              });
            },
            child: Container(
              alignment: Alignment.center,
              child: Container(
                alignment: Alignment.center,
                width: 130,
                height: 30,
                color: Colors.green,
                child: const Text(
                  "Reset",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
