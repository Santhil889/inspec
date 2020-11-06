import 'package:flutter/material.dart';
import 'package:inspec_xtra/logic/database/mysql.dart';
import 'package:inspec_xtra/view.dart';

class HRView extends StatefulWidget {
  final data;

  const HRView({Key key, this.data}) : super(key: key);
  @override
  _HRViewState createState() => _HRViewState();
}

class _HRViewState extends State<HRView> {
  bool _autovalidate=false;
  final formkey=GlobalKey<FormState>();
  TextEditingController remarks = new TextEditingController();
  // ignore: non_constant_identifier_names
  bool IdentifiedProperly_Signage=false,EasyAccess_NoObstruction=false,	NoCorrosionObserved=false,	ProperFunctioningofValve=false,	NoLeakageFromTheLine=false,	NoDirtyWaterDischarge=false,HoseReelMountedProperly=false;

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
      ProperFunctioningofValve=widget.data["ValveProperFunction"] == 1 ? true : false;
      NoLeakageFromTheLine=widget.data["NoLeakageFromLine"] == 1 ? true : false;
      NoDirtyWaterDischarge=widget.data["NoDirtyWaterDischarge"] == 1 ? true : false;
      HoseReelMountedProperly=widget.data["HoseReelMountedProper"] == 1 ? true : false;
    });
  }

  var db= new MySQL();

  updateval(){
    db.getConnection().then((conn){
      String sql="UPDATE `incidentreport`.`tbl_hosereel` SET `IdentifiedProperly`='${IdentifiedProperly_Signage ? 1: 0}', `NoObstruction`='${EasyAccess_NoObstruction ? 1: 0}', `NoCorrosionObserved`='${NoCorrosionObserved ? 1: 0}', `ValveProperFunction`='${ProperFunctioningofValve ? 1: 0}', `NoLeakageFromLine`='${NoLeakageFromTheLine ? 1: 0}', `NoDirtyWaterDischarge`='${NoDirtyWaterDischarge ? 1: 0}', `HoseReelMountedProper`='${HoseReelMountedProperly ? 1: 0}', `Remarks`='${remarks.text}' WHERE  `HRID`=${widget.data["HRID"]}";
      conn.query(sql).then((result){
        print(result);
      });
    });
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> ViewData()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hose Reel : ${widget.data["MachineTagNo"]}"),),
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
                Text("${widget.data["MachineTagNo"]}",style: TextStyle(
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
                  Text("${widget.data["MaintenanceDoneBy"]}",style: TextStyle(
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
                  Text("${widget.data["Remarks"]}",style: TextStyle(
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