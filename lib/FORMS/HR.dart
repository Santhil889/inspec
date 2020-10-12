import 'package:flutter/material.dart';

class HRView extends StatefulWidget {
  @override
  _HRViewState createState() => _HRViewState();
}

class _HRViewState extends State<HRView> {
  TextEditingController remarks = new TextEditingController();
  // ignore: non_constant_identifier_names
  bool IdentifiedProperly_Signage=false,EasyAccess_NoObstruction=false,	NoCorrosionObserved=false,	ProperFunctioningofValve=false,	NoLeakageFromTheLine=false,	NoDirtyWaterDischarge=false,HoseReelMountedProperly=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hose Reel : HR-01"),),
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
                Text("HR-01",style: TextStyle(
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
                Text("Main Enterance Gate",style: TextStyle(
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
                Text("2/1/2020",style: TextStyle(
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
                Text("Suraj",style: TextStyle(
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
                Text("All ok",style: TextStyle(
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
                Text("Identified Properly / Signage",style: TextStyle(
                  fontSize: 20,
                ),
                ),
                Switch(
                  value: IdentifiedProperly_Signage,
                  onChanged: (val){
                    setState(() {
                      IdentifiedProperly_Signage=val;
                    });
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Easy Access/No Obstruction",style: TextStyle(
                  fontSize: 20,
                ),
                ),
                Switch(
                  value: EasyAccess_NoObstruction,
                  onChanged: (val){
                    setState(() {
                      EasyAccess_NoObstruction=val;
                      print(val);
                    });
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("No Corrosion Observed",style: TextStyle(
                  fontSize: 20,
                ),
                ),
                Switch(
                  value: NoCorrosionObserved,
                  onChanged: (val){
                    setState(() {
                      NoCorrosionObserved=val;
                      print(val);
                    });
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Proper Functioning of Valve",style: TextStyle(
                  fontSize: 20,
                ),
                ),
                Switch(
                  value: ProperFunctioningofValve,
                  onChanged: (val){
                    setState(() {
                      ProperFunctioningofValve=val;
                      print(val);
                    });
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("No Leakage From The Line",style: TextStyle(
                  fontSize: 20,
                ),
                ),
                Switch(
                  value: NoLeakageFromTheLine,
                  onChanged: (val){
                    setState(() {
                      NoLeakageFromTheLine=val;
                      print(val);
                    });
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("No Dirty Water Discharge",style: TextStyle(
                  fontSize: 20,
                ),
                ),
                Switch(
                  value: NoDirtyWaterDischarge,
                  onChanged: (val){
                    setState(() {
                      NoDirtyWaterDischarge=val;
                      print(val);
                    });
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Hose Reel Mounted Properly",style: TextStyle(
                  fontSize: 20,
                ),
                ),
                Switch(
                  value: HoseReelMountedProperly,
                  onChanged: (val){
                    setState(() {
                      HoseReelMountedProperly=val;
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