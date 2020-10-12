import 'package:flutter/material.dart';

class HBView extends StatefulWidget {
  @override
  _HBViewState createState() => _HBViewState();
}

class _HBViewState extends State<HBView> {
  TextEditingController remarks = new TextEditingController();
  // ignore: non_constant_identifier_names
  bool IdentifiedProperly_Signage=false,EasyAccess_NoObstruction=false,	NoCorrosionObserved=false,	ProperFunctioningofValve=false,	HydrantLugsOperatedSmoothly=false,	NoDirtyWaterDischarge=false,	FHoseMountedProperly=false,	FHoseSmoothFunctionofNozzleAndValve=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hose Box : HB-01"),),
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
                Text("HB-01",style: TextStyle(
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
                Text("Hydrant Lugs Operated Smoothly",style: TextStyle(
                  fontSize: 20,
                ),
                ),
                Switch(
                  value: HydrantLugsOperatedSmoothly,
                  onChanged: (val){
                    setState(() {
                      HydrantLugsOperatedSmoothly=val;
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
                Text("F. Hose Mounted Properly",style: TextStyle(
                  fontSize: 20,
                ),
                ),
                Switch(
                  value: FHoseMountedProperly,
                  onChanged: (val){
                    setState(() {
                      FHoseMountedProperly=val;
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
                Text("F. Hose Smooth Function of Nozzle",style: TextStyle(
                  fontSize: 20,
                ),
                ),
                Switch(
                  value: FHoseSmoothFunctionofNozzleAndValve,
                  onChanged: (val){
                    setState(() {
                      FHoseSmoothFunctionofNozzleAndValve=val;
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