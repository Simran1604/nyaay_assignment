import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const MyHomePage(title: 'Nyaay'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Center(
          child: ElevatedButton(
            child: Text('Order'),
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(20)),
                  ),
                  builder: (context) => Container(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              '\u{20B9} 300',
                              style: TextStyle(
                                  fontSize: 56, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '\u{20B9} 500',
                              style: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.lineThrough),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              "Legal Consultation With Adv Rahul",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                  focusColor: Color.fromARGB(255, 244, 158, 20),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black26)),
                                  suffixIcon: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: TextButton(
                                      style: ButtonStyle(
                                        side: MaterialStateProperty.all<
                                            BorderSide>(
                                          BorderSide(color: Colors.white),
                                        ),
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                Colors.white30),
                                        shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(17),
                                          ),
                                        ),
                                        iconColor: null,
                                      ),
                                      onPressed: () {},
                                      child: Text(
                                        "CHECK",
                                        style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 244, 158, 20),
                                        ),
                                      ),
                                    ),
                                  ),
                                  hintText: 'Enter Coupon Code'),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                "Get 50% off using NYAAY",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(7),
                                    ),
                                  ),
                                  side: MaterialStateProperty.all<BorderSide>(
                                      BorderSide(color: Colors.black26)),
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Color.fromARGB(255, 249, 229, 210))),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                "Get 50% off using NYAAY",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(7),
                                    ),
                                  ),
                                  side: MaterialStateProperty.all<BorderSide>(
                                      BorderSide(color: Colors.black26)),
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Color.fromARGB(255, 249, 229, 210))),
                            ),
                            SizedBox(
                              height: 60,
                            ),
                            Center(
                              child: ElevatedButton(
                                style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(46),
                                      ),
                                    ),
                                    side: MaterialStateProperty.all<BorderSide>(
                                        BorderSide(
                                            color: Colors.black, width: 2.5)),
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.white)),
                                child: Text(
                                  'Pay     >',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                                onPressed: () => Navigator.pop(context),
                              ),
                            )
                          ],
                        ),
                      ));
            },
          ),
        ),
      );
}
