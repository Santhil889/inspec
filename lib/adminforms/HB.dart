import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:inspec_xtra/logic/database/mysql.dart';

//INSERT INTO `incidentreport`.`tbl_hosereel` (`HRID`, `MachineTagNo`, `MachineName`, `Location`, `IdentifiedProperly`, `NoObstruction`, `NoCorrosionObserved`, `ValveProperFunction`, `NoLeakageFromLine`, `NoDirtyWaterDischarge`, `HoseReelMountedProper`, `LastMaintenanceDate`, `MaintenanceDoneBy`, `InspectionDate`, `InspectionFrequency`, `InspectionDoneBy`, `Remarks`) VALUES ('1', 'HR-001', 'Hose Reel 1', 'Back Gate', '1', '1', '1', '1', '1', '1', '1', '2020-11-07 14:56:36.000', 'Santhil Kalantre', '2020-11-05 14:56:53.000', 'Yearly', 'Yash Arora', 'Everything is fine');
//INSERT INTO `incidentreport`.`tbl_fireextinguisher` (`extinghuisherId`, `MachineName`, `TagNo`, `Location`, `Type`, `capacity`, `manufactureDate`, `RefillDueDate`, `InspectionTagCheck`, `lastMaintenanceDate`, `MaintenanceDoneBy`, `InspectionDate`, `InspectionFrequency`, `InspectionDoneBy`, `Remark`) VALUES ('2', 'Extinghuisher 2', 'EXT-002', 'Main Enternce', 'Dry Chemical', '15 kg', '2020-11-02 15:49:49.000', '2023-11-02 15:49:51.000', '0', '2020-10-02 15:50:01.000', 'Santhil Kalantre', '2020-10-31 15:50:18.000', 'Yearly', 'Arvind Kumar', 'Needs Checking');
//INSERT INTO `incidentreport`.`tbl_hosebox` (`HBId`, `TagNo`, `MachineName`, `Location`, `IdentifiedProperly`, `NoObstruction`, `NoCorrosionObserved`, `ValveProperFunctioning`, `HydrantLugsSmooth`, `NoDirtyWater`, `FHoseMountedProperly`, `FHoseSmoothFunctionofNozzleAndValve`, `LastMaintenanceDate`, `MaintenanceBy`, `InspectionDate`, `InspectionFrequency`, `InspectionDoneBy`, `Remark`) VALUES ('4', 'HB-004', 'HOSE BOX 4', 'Front Enterance Gate', '1', '0', '1', '0', '1', '0', '1', '0', '2018-12-20 15:40:22.000', 'Akshay Kumar', '2019-10-27 15:40:48.000', 'Yearly', 'Arvind Kumar', 'Need Inspection');


class ADDHB extends StatefulWidget {
  @override
  _ADDHBState createState() => _ADDHBState();
}

class _ADDHBState extends State<ADDHB> {
  bool _autovalidate=false;
  final formkey=GlobalKey<FormState>();
  DateTime selectedDate1,selectedDate2;
  TextEditingController machineTag = new TextEditingController();
  TextEditingController machineName = new TextEditingController();
  TextEditingController capacity = new TextEditingController();
  TextEditingController type = new TextEditingController();
  TextEditingController location = new TextEditingController();
  TextEditingController frequency = new TextEditingController();

  var db= new MySQL();

  putvalues(){
    db.getConnection().then((conn){
      String sql="INSERT INTO `incidentreport`.`tbl_hosebox` (`TagNo`, `MachineName`, `Location`, `IdentifiedProperly`, `NoObstruction`, `NoCorrosionObserved`, `ValveProperFunctioning`, `HydrantLugsSmooth`, `NoDirtyWater`, `FHoseMountedProperly`, `FHoseSmoothFunctionofNozzleAndValve`, `LastMaintenanceDate`,  `InspectionDate`, `InspectionFrequency`, `Remark`) VALUES ('${machineTag.text}', '${machineName.text}', '${location.text}', '0', '0', '0', '0', '0', '0', '0', '0', '${selectedDate1}','${selectedDate2}', '${frequency.text}','Need Inspection')";
      conn.query(sql).then((result){
        print(result);
      });
    });
    Navigator.pop(context);
  }

  Future<void> _selectDate1(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: new DateTime(1970, 8),
        lastDate: new DateTime(2101)
    );
    if (picked != null && picked != selectedDate1)
      setState(() {
        selectedDate1 = picked;
        print(selectedDate1);
      });
  }
  Future<void> _selectDate2(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: new DateTime(1970, 8),
        lastDate: new DateTime(2101)
    );
    if (picked != null && picked != selectedDate2)
      setState(() {
        selectedDate2 = picked;
        print(selectedDate2);
      });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Extinguisher"),centerTitle: true,),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Form(
              key: formkey,
              autovalidate: _autovalidate,
              child: Column(
                children: [
                  //Machine Tag
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 16),
                    child: TextFormField(
                      controller: machineTag,
                      validator: (value){
                        return value.length>2 ? null : "Please Enter Proper Machine Tag";
                      },
                      decoration: new InputDecoration(
                        border: new OutlineInputBorder(
                            borderSide: new BorderSide(color: Colors.teal)
                        ),
                        hintText: 'Tell us about Machine Tag',
                        labelText: 'Machine Tag',
                        prefixIcon: const Icon(Icons.filter_tilt_shift),
                      ),
                    ),
                  ),
                  //Machine Name
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 16),
                    child: TextFormField(
                      controller: machineName,
                      //                    validator: (value){
//                      return value.length>3 ? null : "Please Enter Area code";
//                    },
                      decoration: new InputDecoration(
                        border: new OutlineInputBorder(
                            borderSide: new BorderSide(color: Colors.teal)
                        ),
                        hintText: 'Tell us Machine Name',
                        labelText: 'Machine Name',
                        prefixIcon: const Icon(Icons.filter_tilt_shift),
                      ),
                    ),
                  ),
                  //Location
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 16),
                    child: TextFormField(
                      controller: location,
                      validator: (value){
                        return value.length>3 ? null : "Please Enter Proper Location";
                      },
                      decoration: new InputDecoration(
                        border: new OutlineInputBorder(
                            borderSide: new BorderSide(color: Colors.teal)
                        ),
                        hintText: 'Tell us about Location',
                        labelText: 'Location',
                        prefixIcon: const Icon(Icons.filter_tilt_shift),
                      ),
                    ),
                  ),
                  //frequency
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 16),
                    child: TextFormField(
                      controller: frequency,
                      validator: (value){
                        return value.length>3 ? null : "Please Enter Proper Frequency";
                      },
                      decoration: new InputDecoration(
                        border: new OutlineInputBorder(
                            borderSide: new BorderSide(color: Colors.teal)
                        ),
                        hintText: 'Tell us about Frequency',
                        labelText: 'Frequency',
                        prefixIcon: const Icon(Icons.filter_tilt_shift),
                      ),
                    ),
                  ),

                ],
              ),
            ),
            //dates
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width*0.5,
                  height: MediaQuery.of(context).size.height*0.05,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue, width: 1)
                  ),
                  child : selectedDate1 == null ?
                  Center(child: Text("Select Manufacture Date")) :
                  Center(child: Text("${DateFormat("dd-MM-yyyy").format(selectedDate1)}"),),
                ),
                RaisedButton(
                  onPressed: () => _selectDate1(context),
                  child: Text('Select date'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width*0.5,
                  height: MediaQuery.of(context).size.height*0.05,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue, width: 1)
                  ),
                  child : selectedDate2 == null ?
                  Center(child: Text("Select Refill due date")) :
                  Center(child: Text("${DateFormat("dd-MM-yyyy").format(selectedDate2)}"),),
                ),
                RaisedButton(
                  onPressed: () => _selectDate2(context),
                  child: Text('Select date'),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical:8.0, horizontal: 16),
              child: GestureDetector(
                  onTap: (){
                    //todo
                    if(formkey.currentState.validate())
                      putvalues();
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
                          color: Colors.redAccent
                      ),
                      child: Center(child: Text("Add Machine",style: TextStyle(color: Colors.white,fontSize: 19)),)
                  )
              ),
            )
          ],
        ),
      ),
    );
  }
}
