import 'package:flutter/material.dart';
import 'package:inspec_xtra/FORMS/Ext.dart';
import 'package:inspec_xtra/FORMS/HB.dart';
import 'package:inspec_xtra/FORMS/HR.dart';

class ViewData extends StatefulWidget {
  @override
  _ViewDataState createState() => _ViewDataState();
}

class _ViewDataState extends State<ViewData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Visual Inspection"),centerTitle: true,),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Extinguisher
            Padding(
              padding: const EdgeInsets.only(top: 8,left: 10,right: 10,bottom: 8),
              child: GestureDetector(
                onTap: (){
                  //todo;
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ExtView()));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width*0.95,
                  height: MediaQuery.of(context).size.height*0.3,
                  decoration: BoxDecoration(
                      color: Colors.green.withOpacity(0.55),
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0,top: 6),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("Category : ",style: TextStyle(
                              fontSize: 20,
                              ),
                            ),
                            Text("Extinguisher",style: TextStyle(
                              fontSize: 24,fontWeight: FontWeight.bold
                            ),),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Tag No: ",style: TextStyle(
                              fontSize: 20,
                              ),
                            ),
                            Text("EXT-01",style: TextStyle(
                                fontSize: 24,fontWeight: FontWeight.bold
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Location : ",style: TextStyle(
                              fontSize: 20,
                              ),
                            ),
                            Text("SW Gate of Ware House",style: TextStyle(
                                fontSize: 24,fontWeight: FontWeight.bold
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Type : ",style: TextStyle(
                              fontSize: 20,
                            ),
                            ),
                            Text("Wet Chemical",style: TextStyle(
                                fontSize: 24,fontWeight: FontWeight.bold
                            ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Remark :",style: TextStyle(
                              fontSize: 20,
                            ),
                            ),
                            Text("Everything is ok",style: TextStyle(
                                fontSize: 24,fontWeight: FontWeight.bold
                            ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8,left: 10,right: 10 ,bottom: 8),
              child: GestureDetector(
                onTap: (){
                  //todo
                },
                child: Container(
                  width: MediaQuery.of(context).size.width*0.95,
                  height: MediaQuery.of(context).size.height*0.3,
                  decoration: BoxDecoration(
                      color: Colors.redAccent.withOpacity(0.9),
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0,top: 6),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("Category : ",style: TextStyle(
                              fontSize: 20,
                            ),
                            ),
                            Text("Extinguisher",style: TextStyle(
                                fontSize: 24,fontWeight: FontWeight.bold
                            ),),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Tag No: ",style: TextStyle(
                              fontSize: 20,
                            ),
                            ),
                            Text("EXT-02",style: TextStyle(
                                fontSize: 24,fontWeight: FontWeight.bold
                            ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Location : ",style: TextStyle(
                              fontSize: 20,
                            ),
                            ),
                            Text("Packing Area",style: TextStyle(
                                fontSize: 24,fontWeight: FontWeight.bold
                            ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Type : ",style: TextStyle(
                              fontSize: 20,
                            ),
                            ),
                            Text("Carbon Dioxide",style: TextStyle(
                                fontSize: 24,fontWeight: FontWeight.bold
                            ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Remark :",style: TextStyle(
                              fontSize: 20,
                            ),
                            ),
                            Text("Everything is ok",style: TextStyle(
                                fontSize: 24,fontWeight: FontWeight.bold
                            ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8,left: 10,right: 10,bottom: 8),
              child:GestureDetector(
                onTap: (){
                  //todo
                },
                child: Container(
                  width: MediaQuery.of(context).size.width*0.95,
                  height: MediaQuery.of(context).size.height*0.3,
                  decoration: BoxDecoration(
                      color: Colors.redAccent.withOpacity(0.9),
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0,top: 6),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("Category : ",style: TextStyle(
                              fontSize: 20,
                            ),
                            ),
                            Text("Extinguisher",style: TextStyle(
                                fontSize: 24,fontWeight: FontWeight.bold
                            ),),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Tag No: ",style: TextStyle(
                              fontSize: 20,
                            ),
                            ),
                            Text("EXT-03",style: TextStyle(
                                fontSize: 24,fontWeight: FontWeight.bold
                            ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Location : ",style: TextStyle(
                              fontSize: 20,
                            ),
                            ),
                            Text("Packing Area",style: TextStyle(
                                fontSize: 24,fontWeight: FontWeight.bold
                            ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Type : ",style: TextStyle(
                              fontSize: 20,
                            ),
                            ),
                            Text("Water and Foam",style: TextStyle(
                                fontSize: 24,fontWeight: FontWeight.bold
                            ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Remark :",style: TextStyle(
                              fontSize: 20,
                            ),
                            ),
                            Text("Need Maintenance",style: TextStyle(
                                fontSize: 24,fontWeight: FontWeight.bold
                            ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            //Hose Box
            Padding(
              padding: const EdgeInsets.only(top: 8,left: 10,right: 10,bottom: 8),
              child: GestureDetector(
                onTap: (){
                  //todo
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> HBView()));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width*0.95,
                  height: MediaQuery.of(context).size.height*0.3,
                  decoration: BoxDecoration(
                      color: Colors.green.withOpacity(0.55),
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0,top: 6),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("Category : ",style: TextStyle(
                              fontSize: 20,
                            ),
                            ),
                            Text("Hose Box",style: TextStyle(
                                fontSize: 24,fontWeight: FontWeight.bold
                            ),),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Tag No: ",style: TextStyle(
                              fontSize: 20,
                            ),
                            ),
                            Text("HB-01",style: TextStyle(
                                fontSize: 24,fontWeight: FontWeight.bold
                            ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Location : ",style: TextStyle(
                              fontSize: 20,
                            ),
                            ),
                            Text("Main Enterance Gate",style: TextStyle(
                                fontSize: 24,fontWeight: FontWeight.bold
                            ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Remark :",style: TextStyle(
                              fontSize: 20,
                            ),
                            ),
                            Text("All Ok",style: TextStyle(
                                fontSize: 24,fontWeight: FontWeight.bold
                            ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8,left: 10,right: 10 ,bottom: 8),
              child: GestureDetector(
                onTap: (){
                  //todo
                },
                child: Container(
                  width: MediaQuery.of(context).size.width*0.95,
                  height: MediaQuery.of(context).size.height*0.3,
                  decoration: BoxDecoration(
                      color: Colors.redAccent.withOpacity(0.9),
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0,top: 6),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("Category : ",style: TextStyle(
                              fontSize: 20,
                            ),
                            ),
                            Text("Hose Box",style: TextStyle(
                                fontSize: 24,fontWeight: FontWeight.bold
                            ),),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Tag No: ",style: TextStyle(
                              fontSize: 20,
                            ),
                            ),
                            Text("HB-02",style: TextStyle(
                                fontSize: 24,fontWeight: FontWeight.bold
                            ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Location : ",style: TextStyle(
                              fontSize: 20,
                            ),
                            ),
                            Text("Back Enterance Gate",style: TextStyle(
                                fontSize: 24,fontWeight: FontWeight.bold
                            ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Remark :",style: TextStyle(
                              fontSize: 20,
                            ),
                            ),
                            Text("Need Maintenance",style: TextStyle(
                                fontSize: 24,fontWeight: FontWeight.bold
                            ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8,left: 10,right: 10,bottom: 8),
              child: GestureDetector(
                onTap: (){
                  //todo
                },
                child: Container(
                  width: MediaQuery.of(context).size.width*0.95,
                  height: MediaQuery.of(context).size.height*0.3,
                  decoration: BoxDecoration(
                      color: Colors.redAccent.withOpacity(0.9),
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0,top: 6),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("Category : ",style: TextStyle(
                              fontSize: 20,
                            ),
                            ),
                            Text("Hose Box",style: TextStyle(
                                fontSize: 24,fontWeight: FontWeight.bold
                            ),),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Tag No: ",style: TextStyle(
                              fontSize: 20,
                            ),
                            ),
                            Text("HB-03",style: TextStyle(
                                fontSize: 24,fontWeight: FontWeight.bold
                            ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Location : ",style: TextStyle(
                              fontSize: 20,
                            ),
                            ),
                            Text("Main Enterance Gate",style: TextStyle(
                                fontSize: 24,fontWeight: FontWeight.bold
                            ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Remark :",style: TextStyle(
                              fontSize: 20,
                            ),
                            ),
                            Text("Need Maintenance",style: TextStyle(
                                fontSize: 24,fontWeight: FontWeight.bold
                            ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            //Hose Reel
            Padding(
              padding: const EdgeInsets.only(top: 8,left: 10,right: 10,bottom: 8),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> HRView()));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width*0.95,
                  height: MediaQuery.of(context).size.height*0.3,
                  decoration: BoxDecoration(
                      color: Colors.green.withOpacity(0.55),
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0,top: 6),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("Category : ",style: TextStyle(
                              fontSize: 20,
                            ),
                            ),
                            Text("Hose Reel",style: TextStyle(
                                fontSize: 24,fontWeight: FontWeight.bold
                            ),),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Tag No: ",style: TextStyle(
                              fontSize: 20,
                            ),
                            ),
                            Text("HR-01",style: TextStyle(
                                fontSize: 24,fontWeight: FontWeight.bold
                            ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Location : ",style: TextStyle(
                              fontSize: 20,
                            ),
                            ),
                            Text("Main Enterance Gate",style: TextStyle(
                                fontSize: 24,fontWeight: FontWeight.bold
                            ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Remark :",style: TextStyle(
                              fontSize: 20,
                            ),
                            ),
                            Text("All Ok",style: TextStyle(
                                fontSize: 24,fontWeight: FontWeight.bold
                            ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8,left: 10,right: 10 ,bottom: 8),
              child: GestureDetector(
                onTap: (){
                  //todo
                },
                child: Container(
                  width: MediaQuery.of(context).size.width*0.95,
                  height: MediaQuery.of(context).size.height*0.3,
                  decoration: BoxDecoration(
                      color: Colors.redAccent.withOpacity(0.9),
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0,top: 6),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("Category : ",style: TextStyle(
                              fontSize: 20,
                            ),
                            ),
                            Text("Hose Reel",style: TextStyle(
                                fontSize: 24,fontWeight: FontWeight.bold
                            ),),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Tag No: ",style: TextStyle(
                              fontSize: 20,
                            ),
                            ),
                            Text("HR-02",style: TextStyle(
                                fontSize: 24,fontWeight: FontWeight.bold
                            ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Location : ",style: TextStyle(
                              fontSize: 20,
                            ),
                            ),
                            Text("Back Enterance Gate",style: TextStyle(
                                fontSize: 24,fontWeight: FontWeight.bold
                            ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Remark :",style: TextStyle(
                              fontSize: 20,
                            ),
                            ),
                            Text("Need Maintenance",style: TextStyle(
                                fontSize: 24,fontWeight: FontWeight.bold
                            ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8,left: 10,right: 10,bottom: 8),
              child: GestureDetector(
                onTap: (){
                  //todo
                },
                child: Container(
                  width: MediaQuery.of(context).size.width*0.95,
                  height: MediaQuery.of(context).size.height*0.3,
                  decoration: BoxDecoration(
                      color: Colors.redAccent.withOpacity(0.9),
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0,top: 6),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("Category : ",style: TextStyle(
                              fontSize: 20,
                            ),
                            ),
                            Text("Hose Reel",style: TextStyle(
                                fontSize: 24,fontWeight: FontWeight.bold
                            ),),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Tag No: ",style: TextStyle(
                              fontSize: 20,
                            ),
                            ),
                            Text("HR-03",style: TextStyle(
                                fontSize: 24,fontWeight: FontWeight.bold
                            ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Location : ",style: TextStyle(
                              fontSize: 20,
                            ),
                            ),
                            Text("Main Enterance Gate",style: TextStyle(
                                fontSize: 24,fontWeight: FontWeight.bold
                            ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Remark :",style: TextStyle(
                              fontSize: 20,
                            ),
                            ),
                            Text("Need Maintenance",style: TextStyle(
                                fontSize: 24,fontWeight: FontWeight.bold
                            ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
