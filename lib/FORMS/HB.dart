import 'package:flutter/material.dart';
import 'package:inspec_xtra/logic/database/mysql.dart';
import 'package:inspec_xtra/view.dart';

class HBView extends StatefulWidget {
  final data;

  const HBView({Key key, this.data}) : super(key: key);
  @override
  _HBViewState createState() => _HBViewState();
}

class _HBViewState extends State<HBView> {
  bool _autovalidate=false;
  final formkey=GlobalKey<FormState>();
  TextEditingController remarks = new TextEditingController();
  // ignore: non_constant_identifier_names
  bool IdentifiedProperly_Signage=false,EasyAccess_NoObstruction=false,	NoCorrosionObserved=false,	ProperFunctioningofValve=false,	HydrantLugsOperatedSmoothly=false,	NoDirtyWaterDischarge=false,	FHoseMountedProperly=false,	FHoseSmoothFunctionofNozzleAndValve=false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setbool();
  }

  setbool(){
    setState(() {
      IdentifiedProperly_Signage=widget.data["IdentifiedProperly"] == 1 ? true : false;
      EasyAccess_NoObstruction=widget.data["NoObstruction"] == 1 ? true : false;
      NoCorrosionObserved=widget.data["NoCorrosionObserved"] == 1 ? true : false;
      ProperFunctioningofValve=widget.data["ValveProperFunctioning"] == 1 ? true : false;
      HydrantLugsOperatedSmoothly=widget.data["HydrantLugsSmooth"] == 1 ? true : false;
      NoDirtyWaterDischarge=widget.data["NoDirtyWater"] == 1 ? true : false;
      FHoseMountedProperly=widget.data["FHoseMountedProperly"] == 1 ? true : false;
      FHoseSmoothFunctionofNozzleAndValve=widget.data["FHoseSmoothFunctionofNozzleAndValve"] == 1 ? true : false;
    });
  }
  var db= new MySQL();
  //UPDATE `incidentreport`.`tbl_hosebox` SET `NoObstruction`='1', `Remark`='Need Maintance' WHERE  `HBId`=2;
  //IdentifiedProperly: 1, NoObstruction: 1, NoCorrosionObserved: 1, ValveProperFunctioning: 1, HydrantLugsSmooth: 1, NoDirtyWater: 1, FHoseMountedProperly: 1, FHoseSmoothFunctionofNozzleAndValve: 1,
  //UPDATE `incidentreport`.`tbl_hosebox` SET `FHoseMountedProperly`='0', `FHoseSmoothFunctionofNozzleAndValve`='1' WHERE  `HBId`=2;
  updateval(){
    db.getConnection().then((conn){
      String sql="UPDATE `incidentreport`.`tbl_hosebox` SET `IdentifiedProperly`='${IdentifiedProperly_Signage ? 1 :0 }', `NoObstruction`='${EasyAccess_NoObstruction ? 1 :0 }', `NoCorrosionObserved`='${NoCorrosionObserved ? 1 :0}', `ValveProperFunctioning`='${ProperFunctioningofValve ? 1 :0}', `HydrantLugsSmooth`='${HydrantLugsOperatedSmoothly ? 1 :0}', `NoDirtyWater`='${NoDirtyWaterDischarge ? 1 :0}', `FHoseMountedProperly`='${FHoseMountedProperly ? 1 :0}', `FHoseSmoothFunctionofNozzleAndValve`='${FHoseSmoothFunctionofNozzleAndValve ? 1 :0}', `Remark`='${remarks.text}' WHERE  `HBId`=${widget.data["HBId"]}";
      conn.query(sql).then((result){
        print(result);
      });
    });
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> ViewData()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hose Box : ${widget.data["TagNo"]}"),),
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
                Text("${widget.data["TagNo"]}",style: TextStyle(
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
                Text("${widget.data["Location"]}",style: TextStyle(
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
                Text("${widget.data["LastMaintenanceDate"].toString().substring(0,10)}",style: TextStyle(
                    fontSize: 24,fontWeight: FontWeight.bold
                ),
                ),
              ],
            ),
          ),
          FittedBox(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Text("Maintenance Done By : ",style: TextStyle(
                    fontSize: 20,
                  ),
                  ),
                  Text("${widget.data["MaintenanceBy"]}",style: TextStyle(
                      fontSize: 24,fontWeight: FontWeight.bold
                  ),
                  ),
                ],
              ),
            ),
          ),
          FittedBox(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Text("Previous Remark :",style: TextStyle(
                    fontSize: 20,
                  ),
                  ),
                  Text("${widget.data["Remark"]}",style: TextStyle(
                      fontSize: 24,fontWeight: FontWeight.bold
                  ),
                  ),
                ],
              ),
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

          Form(
            key: formkey,
            autovalidate: _autovalidate,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: TextFormField(
                controller: remarks,
                validator: (value){
                  return value.length>6 ? null : "Please Enter Proper Remark";
                },
                decoration: new InputDecoration(
                  border: new OutlineInputBorder(
                      borderSide: new BorderSide(color: Colors.teal)
                  ),
                  hintText: 'Any Remarks??',
                  labelText: 'Remarks',
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical:8.0, horizontal: 16),
            child: GestureDetector(
                onTap: (){
                  if(formkey.currentState.validate())
                    updateval();
                  else
                    setState(() {
                      _autovalidate=true;
                    });
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