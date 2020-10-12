import 'package:flutter/material.dart';

class ExtView extends StatefulWidget {
  @override
  _ExtViewState createState() => _ExtViewState();
}

class _ExtViewState extends State<ExtView> {
  TextEditingController remarks = new TextEditingController();
  // ignore: non_constant_identifier_names
  bool Inspection_Tag_Check=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Extinguisher : EXT-01"),),
      body: ListView(
        children: [

          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
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
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
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
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
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
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Text("Capacity : ",style: TextStyle(
                  fontSize: 20,
                ),
                ),
                Text("5 Kg",style: TextStyle(
                    fontSize: 24,fontWeight: FontWeight.bold
                ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Text("Manufacturing Date : ",style: TextStyle(
                  fontSize: 20,
                ),
                ),
                Text("3/01/2019",style: TextStyle(
                    fontSize: 24,fontWeight: FontWeight.bold
                ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Text("Refill Due Date : ",style: TextStyle(
                  fontSize: 20,
                ),
                ),
                Text("3/01/2024",style: TextStyle(
                    fontSize: 24,fontWeight: FontWeight.bold
                ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Text("Last Maintenance Date : ",style: TextStyle(
                  fontSize: 20,
                ),
                ),
                Text("1/05/2020",style: TextStyle(
                    fontSize: 24,fontWeight: FontWeight.bold
                ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Text("Maintenance Done By : ",style: TextStyle(
                  fontSize: 20,
                ),
                ),
                Text("Pawan Pawan",style: TextStyle(
                    fontSize: 24,fontWeight: FontWeight.bold
                ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Text("Previous Remark :",style: TextStyle(
                  fontSize: 20,
                ),
                ),
                Text("Everything is ok",style: TextStyle(
                    fontSize: 24,fontWeight: FontWeight.bold
                ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Inspection Tag Check",style: TextStyle(
                  fontSize: 20,
                ),
                ),
                Switch(
                  value: Inspection_Tag_Check,
                  onChanged: (val){
                    setState(() {
                      Inspection_Tag_Check=val;
                      print(val);
                    });
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextFormField(
              controller: remarks,
              decoration: new InputDecoration(
                border: new OutlineInputBorder(
                    borderSide: new BorderSide(color: Colors.teal)
                ),
                hintText: 'Any Remarks??',
                labelText: 'Remarks',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical:8.0, horizontal: 16),
            child: GestureDetector(
                onTap: (){
                  //TODO: Sumbit Form
                },
                child: Container(
                    width: MediaQuery.of(context).size.width*0.5,
                    height: MediaQuery.of(context).size.height*0.1,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.blueAccent
                    ),
                    child: Center(child: Text("Update Inspection Result",style: TextStyle(color: Colors.white,fontSize: 19)),)
                )
            ),
          )
        ],
      ),
    );
  }
}


/*

5 kg	3/1/2019	3/1/2024

*body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(),
            Row(
              children: [
                Text("Type : ",style: TextStyle(
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

*/