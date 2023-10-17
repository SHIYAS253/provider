   
import 'package:flutter/material.dart';
import 'package:flutter_application_provider/details.dart';
import 'package:flutter_application_provider/list.dart';
import 'package:flutter_application_provider/provider.dart';
import 'package:provider/provider.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Discover",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.notification_add,
                    color: Colors.black,
                  )
                ],
              ),
            ),
            //textfield

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 300,
                  height: 50,
                  child: TextField(
                      style: TextStyle(color: Colors.white, fontSize: 16),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 12),
                        hintText: "search Notes..",
                        hintStyle: TextStyle(color: Colors.grey.shade700),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                        filled: true,
                        fillColor: Colors.grey.shade500,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                      )),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10)),
                  width: 40,
                  height: 40,
                  child: Icon(
                    Icons.filter_list,
                    color: Colors.white,
                  ),
                )
              ],
            ),

            Row(
              children: [
                Container(
                  width: 390,
                  height: 70,
                  child: ListView.builder(
                    // shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey.shade400,
                            borderRadius: BorderRadius.circular(20)),
                        height: 40,
                        width: 100,
                        child: Center(
                            child: Text(
                          Names[index],
                          style: TextStyle(color: Colors.black),
                        )),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
                child: GridView.builder(
              itemCount: 10,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.6,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 0.1),
              itemBuilder: (context, index) => Container(
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return ChangeNotifierProvider(
                              create: (context) => Mycounterscreenprovider(),
                              child: details(
                                Imageindex: index,
                              ),
                            );
                          },
                        ));
                      },
                      child: Container(
                        height: 250,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade400,
                            borderRadius: BorderRadius.circular(20)),
                        child: item[index],
                      ),
                    ),
                    Text(
                      "regular fit slogan",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.black),
                    ),
                    Text(
                      '''INR 999''',
                      style: TextStyle(
                          fontSize: 15,
                          fontStyle: FontStyle.italic,
                          color: Colors.black54),
                    ),
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}