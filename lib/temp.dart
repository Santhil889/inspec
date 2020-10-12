import 'package:flutter/material.dart';
import 'package:inspec_xtra/view.dart';

// ignore: camel_case_types
class loggedin extends StatefulWidget {
  @override
  _loggedinState createState() => _loggedinState();
}

// ignore: camel_case_types
class _loggedinState extends State<loggedin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("InspecXtra"),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> ViewData()));
                  },
                  child: Container(
                      width: MediaQuery.of(context).size.width*0.7,
                      height: MediaQuery.of(context).size.height*0.1,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.blueAccent,
                      ),
                      child: Center(child: Text("Visual Inspection",style: TextStyle(color: Colors.white,fontSize: 19),))
                  )
              ),
              GestureDetector(
                  onTap: (){

                  },
                  child: Container(
                      width: MediaQuery.of(context).size.width*0.7,
                      height: MediaQuery.of(context).size.height*0.1,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.blueAccent,
                      ),
                      child: Center(child: Text("Incident Reporting",style: TextStyle(color: Colors.white,fontSize: 19),))
                  )
              ),
              GestureDetector(
                  onTap: (){

                  },
                  child: Container(
                      width: MediaQuery.of(context).size.width*0.7,
                      height: MediaQuery.of(context).size.height*0.1,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.blueAccent,
                      ),
                      child: Center(child: Text("Work Permit and LOTO",style: TextStyle(color: Colors.white,fontSize: 19),))
                  )
              ),
              GestureDetector(
                  onTap: (){

                  },
                  child: Container(
                      width: MediaQuery.of(context).size.width*0.7,
                      height: MediaQuery.of(context).size.height*0.1,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.blueAccent
                      ),
                      child: Center(child: Text("Edit Inventory (ADMIN)",style: TextStyle(color: Colors.white,fontSize: 19)),)
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}




