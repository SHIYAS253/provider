import 'package:flutter/material.dart';
import 'package:flutter_application_provider/details.dart';
import 'package:flutter_application_provider/provider.dart';
import 'package:provider/provider.dart';

class FrontPage extends StatefulWidget {
  const FrontPage({super.key});

  @override
  State<FrontPage> createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage> {
  List<String> peru = [
  "all",
  "women",
  "kids",
  "men",

];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Text(
                    "Discover",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                width: 320,
              ),
              Icon(
                Icons.shopping_cart,
                size: 30,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),

          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                   width: 270,
                  child: TextFormField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Color.fromARGB(255, 171, 157, 157),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        hintText: "Search anything",
                        hintStyle: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
              SizedBox(width: 10,),
              Container(height: 50,
              width: 50,color: Colors.black,
                child:
                 Icon(Icons.menu,color: Colors.white,),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
     
        Row(
          children: [
            Container(
              width: 350,
              height: 70,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                
                itemBuilder: (context, index)=>Padding(padding: 
                EdgeInsets.symmetric(
                  horizontal: 10,vertical: 10
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  height: 40,
                  width: 90,
                    child: Center(
                      child: Text(
                        peru[index],
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                ),
                )
                ),
            )
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Expanded(child: GridView.builder(
          itemCount: 10,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.6,
            crossAxisSpacing: 10,
            mainAxisSpacing:0.1 ),
        
         itemBuilder: (context, index) => Container(
          
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context){
return ChangeNotifierProvider(
  create: (context) => Mycounterscreenprovider(),
 

);

                  },
                  
                  ));
                },
                child: GestureDetector(onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Details(),));
                },
                  child: Container(
                    height: 240,
                    decoration: BoxDecoration(
                      image:DecorationImage(image:AssetImage("assets/images/im.jpg"),
                      fit: BoxFit.fill,
                      filterQuality: FilterQuality.high   
                      ),
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20)
                    ),
                  ),
                ),
              ),
              Text("regular fit polo",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.black
              ),
              ),

              Text('''INR 999''',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.black
              ),
              )
            ],
          ),
        )
        )
        )
        ]),
      ),
    ));
  }
}
