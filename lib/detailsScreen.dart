import 'package:flutter/material.dart';

class basicDetails extends StatefulWidget {
  const basicDetails({Key? key}) : super(key: key);

  @override
  _basicDetailsState createState() => _basicDetailsState();
}

class _basicDetailsState extends State<basicDetails> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.pink[600],
              ),
              height: 100,
              width: double.maxFinite,
              child: Center(
                child: Text(
                  "Basic Details",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(height: 40),
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40)),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: "Name",
                          labelStyle: TextStyle(fontSize: 19),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(width: 5),
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40)),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: "Date of Birth",
                          labelStyle: TextStyle(fontSize: 19),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(width: 5),
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40)),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: "Email",
                          labelStyle: TextStyle(fontSize: 19),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(width: 5),
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40)),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: "Exam Name",
                          labelStyle: TextStyle(fontSize: 19),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(width: 5),
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40)),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: "School Name",
                          labelStyle: TextStyle(fontSize: 19),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(width: 5),
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40)),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: "Class",
                          labelStyle: TextStyle(fontSize: 19),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(width: 5),
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                      onPressed: () {}, //To be added later
                      child: Text("Submit"),
                      style: ElevatedButton.styleFrom(
                          shape: StadiumBorder(),
                          primary: Colors.yellow.shade700,
                          padding: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 15),
                          textStyle: TextStyle(
                            fontSize: 20,
                          ))),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
