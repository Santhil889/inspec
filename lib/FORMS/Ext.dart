import 'package:flutter/material.dart';
import 'package:inspec_xtra/logic/database/mysql.dart';
import 'package:inspec_xtra/view.dart';

class ExtView extends StatefulWidget {
  final data;

  const ExtView({Key key, this.data}) : super(key: key);
  @override
  _ExtViewState createState() => _ExtViewState();
}

class _ExtViewState extends State<ExtView> {

  bool _autovalidate=false;
  final formkey=GlobalKey<FormState>();
  TextEditingController remarks = new TextEditingController();
  // ignore: non_constant_identifier_names
  bool Inspection_Tag_Check=false;

  setbool(){
    setState(() {
      Inspection_Tag_Check=widget.data["InspectionTagCheck"]==1 ? true : false;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("${widget.data["extinghuisherId"]}");
    setbool();
  }

  var db= new MySQL();

  updateval(){
    db.getConnection().then((conn){
      String sql="UPDATE `incidentreport`.`tbl_fireextinguisher` SET `InspectionTagCheck`='${Inspection_Tag_Check ? 1 : 0}', `Remark`='${remarks.text}' WHERE  `extinghuisherId`=${widget.data["extinghuisherId"]}";
      conn.query(sql).then((result){
        print(result);
      });
    });
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> ViewData()));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Extinguisher : ${widget.data["TagNo"]}"),),
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
                Text("${widget.data["capacity"]}",style: TextStyle(
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
                Text("${widget.data["manufactureDate"].toString().substring(0,10)}",style: TextStyle(
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
                Text("${widget.data["RefillDueDate"].toString().substring(0,10)}",style: TextStyle(
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
                Text("${widget.data["lastMaintenanceDate"].toString().substring(0,10)}",style: TextStyle(
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