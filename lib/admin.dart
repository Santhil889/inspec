import 'package:flutter/material.dart';
import 'package:inspec_xtra/FORMS/Ext.dart';
import 'package:inspec_xtra/FORMS/HB.dart';
import 'package:inspec_xtra/adminforms/EXt.dart';
import 'package:inspec_xtra/adminforms/HB.dart';
import 'package:inspec_xtra/logic/database/mysql.dart';

// ignore: camel_case_types
class adminview extends StatefulWidget {
  @override
  _adminviewState createState() => _adminviewState();
}

// ignore: camel_case_types
class _adminviewState extends State<adminview> {
  //ALTER TABLE `tbl_hosebox` ADD COLUMN `TYPEOFMACHINE` VARCHAR(50) NOT NULL AFTER `HBId`;
  //ALTER TABLE `tbl_eyewasher` ADD COLUMN `TYPEOFMACHINE` VARCHAR(50) NOT NULL DEFAULT 'eyewasher' AFTER `WasherId`;

  var db= new MySQL();
  List data=[];

  void getconnection(){
    var q=["`incidentreport`.`tbl_hosebox`", "`incidentreport`.`tbl_fireextinguisher`"];
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
    super.initState();
    getconnection();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ADMIN"),centerTitle: true,),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                  onTap: (){
                    //todo
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> ADDEXT()));
                  },
                  child: Container(
                      width: MediaQuery.of(context).size.width*0.7,
                      height: MediaQuery.of(context).size.height*0.1,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.blueAccent,
                      ),
                      child: Center(child: Text("Add Extinguisher",style: TextStyle(color: Colors.white,fontSize: 19),))
                  )
              ),
              GestureDetector(
                  onTap: (){
                    //todo
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> ADDHB()));
                  },
                  child: Container(
                      width: MediaQuery.of(context).size.width*0.7,
                      height: MediaQuery.of(context).size.height*0.1,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.blueAccent,
                      ),
                      child: Center(child: Text("Add Hose Box",style: TextStyle(color: Colors.white,fontSize: 19),))
                  )
              ),
              GestureDetector(
                  onTap: (){
                    //todo
                  },
                  child: Container(
                      width: MediaQuery.of(context).size.width*0.7,
                      height: MediaQuery.of(context).size.height*0.1,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.blueAccent,
                      ),
                      child: Center(child: Text("Add Hose Reel",style: TextStyle(color: Colors.white,fontSize: 19),))
                  )
              ),
            ],
          ),
        ),
      ),
      );
  }
}

setview(data){
  switch(data["TYPEOFMACHINE"]){
    case "hosebox":
      return ViewElementHOSEBOX(data: data,);
      break;
    case "extinguisher":
      return ViewElementEXTINGUISHER(data: data,);
      break;
    default:
      return Container(child: Text("hello"),);
  }
}

int giveNoOne([a=1,b=1,c=1,d=1,e=1,f=1,g=1]){
  if(a==0 || b==0 ||c==0 ||d==0 ||e==0 ||f==0 ||g==0)
    return 0;
  else
    return 1;
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