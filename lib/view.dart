import 'package:flutter/material.dart';
import 'package:inspec_xtra/FORMS/Ext.dart';
import 'package:inspec_xtra/FORMS/HB.dart';
import 'package:inspec_xtra/FORMS/HR.dart';
import 'package:inspec_xtra/logic/database/mysql.dart';

class ViewData extends StatefulWidget {
  @override
  _ViewDataState createState() => _ViewDataState();
}


class _ViewDataState extends State<ViewData> {
  var db= new MySQL();
  List data=[];

  void getconnection(){
    var q=["`incidentreport`.`tbl_fireextinguisher`","`incidentreport`.`tbl_hosebox`", "`incidentreport`.`tbl_hosereel`"];
    db.getConnection().then((conn){
      for(int i=0;i<q.length;i++){
        String sql="select * from ${q[i]}";
        conn.query(sql).then((result){
          print(result);
          result.forEach((element) {
            setState(() {
              data.add(element);
            });
          });
        });
      }
    });
    print(data);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getconnection();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Visual Inspection"),centerTitle: true,),
      body: data.isEmpty ? CircularProgressIndicator() :
          ListView.builder(
            itemCount: data.length,
            itemBuilder: (context,index){
              return setview(data[index]);
            },
          )
    );
  }
}

int giveNoOne([a=1,b=1,c=1,d=1,e=1,f=1,g=1]){
  if(a==0 || b==0 ||c==0 ||d==0 ||e==0 ||f==0 ||g==0)
    return 0;
  else
    return 1;
}

setview(data){
  switch(data["TYPEOFMACHINE"]){
    case "hosebox":
      return ViewElementHOSEBOX(data: data,);
      break;
    case "extinguisher":
      return ViewElementEXTINGUISHER(data: data,);
      break;
    case "hosereel":
      return ViewElementHOSEREEL(data: data,);
      break;
    default:
      return Container(child: Text("hello"),);
  }
}

class ViewElementHOSEBOX extends StatelessWidget {
  final data;

  const ViewElementHOSEBOX({Key key, this.data}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8,left: 10,right: 10,bottom: 8),
      child: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> HBView(data: data,)));
        },
        child: Container(
          width: MediaQuery.of(context).size.width*0.95,
          height: MediaQuery.of(context).size.height*0.3,
          decoration: BoxDecoration(
              color: giveNoOne(data["IdentifiedProperly"],  data["NoObstruction"],  data["NoCorrosionObserved"],  data["ValveProperFunctioning"],  data["HydrantLugsSmooth"],  data["NoDirtyWater"],  data["F.HoseMounted"])==1 ? Colors.green.withOpacity(0.55) : Colors.redAccent.withOpacity(0.9),
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
                    Text("${data['TagNo']}",style: TextStyle(
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
                    Text("${data['Location']}",style: TextStyle(
                        fontSize: 24,fontWeight: FontWeight.bold
                    ),
                    ),
                  ],
                ),
                FittedBox(
                  child: Row(
                    children: [
                      Text("Remark :",style: TextStyle(
                        fontSize: 20,
                      ),
                      ),
                      Text("${data['Remark']}",style: TextStyle(
                          fontSize: 24,fontWeight: FontWeight.bold
                      ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ViewElementEXTINGUISHER extends StatelessWidget {
  final data;

  const ViewElementEXTINGUISHER({Key key, this.data}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8,left: 10,right: 10,bottom: 8),
      child: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> ExtView(data: data,)));
        },
        child: Container(
          width: MediaQuery.of(context).size.width*0.95,
          height: MediaQuery.of(context).size.height*0.3,
          decoration: BoxDecoration(
              color: giveNoOne(data["InspectionTagCheck"])==1 ? Colors.green.withOpacity(0.55) : Colors.redAccent.withOpacity(0.9),
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
                    Text("${data['TagNo']}",style: TextStyle(
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
                    Text("${data['Location']}",style: TextStyle(
                        fontSize: 24,fontWeight: FontWeight.bold
                    ),
                    ),
                  ],
                ),
                FittedBox(
                  child: Row(
                    children: [
                      Text("Remark :",style: TextStyle(
                        fontSize: 20,
                      ),
                      ),
                      Text("${data['Remark']}",style: TextStyle(
                          fontSize: 24,fontWeight: FontWeight.bold
                      ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ViewElementHOSEREEL extends StatelessWidget {
  final data;

  //`HRID``TYPEOFMACHINE``MachineTagNo``MachineName``Location````````````````LastMaintenanceDate``MaintenanceDoneBy``InspectionDate``InspectionFrequency``InspectionDoneBy``Remarks` `incidentreport`.`tbl_hosereel`

  const ViewElementHOSEREEL({Key key, this.data}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8,left: 10,right: 10,bottom: 8),
      child: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> HRView(data: data,)));
        },
        child: Container(
          width: MediaQuery.of(context).size.width*0.95,
          height: MediaQuery.of(context).size.height*0.3,
          decoration: BoxDecoration(
              color: giveNoOne(data["IdentifiedProperly"],  data["NoObstruction"],  data["NoCorrosionObserved"],  data["ValveProperFunction"],  data["NoLeakageFromLine"], data["NoDirtyWaterDischarge"],  data["HoseReelMountedProper"])==1 ? Colors.green.withOpacity(0.55) : Colors.redAccent.withOpacity(0.9),
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
                    Text("${data['MachineTagNo']}",style: TextStyle(
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
                    Text("${data['Location']}",style: TextStyle(
                        fontSize: 24,fontWeight: FontWeight.bold
                    ),
                    ),
                  ],
                ),
                FittedBox(
                  child: Row(
                    children: [
                      Text("Remark :",style: TextStyle(
                        fontSize: 20,
                      ),
                      ),
                      Text("${data['Remarks']}",style: TextStyle(
                          fontSize: 24,fontWeight: FontWeight.bold
                      ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}