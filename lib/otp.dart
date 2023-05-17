import 'package:flutter/material.dart';



class Otp extends StatefulWidget {
  const Otp({Key? key}) : super(key: key);

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {

  TextEditingController pin1 = TextEditingController();
  TextEditingController pin2 = TextEditingController();
  TextEditingController pin3 = TextEditingController();
  TextEditingController pin4 = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          shrinkWrap: true,
          children: [
           Expanded(
               flex: 4,
               child: Column(
             children: [
               Row(

                 children: [
                   IconButton(
                       onPressed: (){

                       },
                       icon: Icon(Icons.arrow_back_ios))
                 ],
               ),

               SizedBox(height: 30,),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Column(
                     children: [
                       Text("Введите код",
                         style: TextStyle(
                             fontSize: 25,
                             fontWeight: FontWeight.bold
                         ),),
                       SizedBox(height: 10,),
                       Text("На ваш телефон +7(960) 147-67-47 поступит звонок,\n Введите последние 4 цифры звонящего номера",
                         textAlign: TextAlign.center,
                         style: TextStyle(
                             fontSize: 14,
                             color: Color(0xff7B61FF)
                         ),),

                     ],
                   ),
                 ],
               ),
               SizedBox(height: 10,),

               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: [
                   Card(
                     color: Color(0xffFFFFFF),
                     shape:  RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(15.0),
                     ),
                     elevation: 1,
                     child:  SizedBox(
                       height: 70,
                       width: 70,
                       child: TextFormField(

                         controller: pin1,
                         onChanged: (val){
                           if(val.length == 1){
                             FocusScope.of(context).nextFocus();
                           }
                         },
                         onSaved: (pin1){
                           print(pin1);
                         },
                         textAlign: TextAlign.center,
                         keyboardType: TextInputType.number,

                         style: TextStyle(
                             fontSize: 30,
                             color: Color(0xff7B61FF)
                         ),
                         decoration: InputDecoration(
                           // hintText: "0",
                           border: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(10),
                               borderSide: BorderSide.none
                           ),


                         ),
                       ),

                     ),
                   ),
                   Card(
                     color: Color(0xffFFFFFF),
                     shape:  RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(15.0),
                     ),
                     elevation: 1,
                     child:  SizedBox(
                       height: 70,
                       width: 70,
                       child: TextFormField(

                         controller: pin2,
                         onChanged: (val){
                           if(val.length == 1){
                             FocusScope.of(context).nextFocus();
                           }
                         },
                         onSaved: (pin1){
                           print(pin2);
                         },
                         textAlign: TextAlign.center,
                         keyboardType: TextInputType.number,

                         style: TextStyle(
                             fontSize: 30,
                             color: Color(0xff7B61FF)
                         ),
                         decoration: InputDecoration(
                           // hintText: "0",
                           border: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(10),
                               borderSide: BorderSide.none
                           ),


                         ),
                       ),
                     ),
                   ),
                   Card(
                     color: Color(0xffFFFFFF),
                     shape:  RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(15.0),
                     ),
                     elevation: 1,
                     child:  SizedBox(
                       height: 70,
                       width: 70,
                       child: TextFormField(

                         controller: pin3,
                         onChanged: (val){
                           if(val.length == 1){
                             FocusScope.of(context).nextFocus();
                           }
                         },
                         onSaved: (pin1){
                           print(pin3);
                         },
                         textAlign: TextAlign.center,
                         keyboardType: TextInputType.number,

                         style: TextStyle(
                             fontSize: 30,
                             color: Color(0xff7B61FF)
                         ),
                         decoration: InputDecoration(
                           // hintText: "0",
                           border: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(10),
                               borderSide: BorderSide.none
                           ),


                         ),
                       ),
                     ),
                   ),
                   Card(
                     color: Color(0xffFFFFFF),
                     shape:  RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(15.0),
                     ),
                     elevation: 1,
                     child:  SizedBox(
                       height: 70,
                       width: 70,
                       child: TextFormField(

                         controller: pin4,
                         onChanged: (val){
                           if(val.length == 1){
                             FocusScope.of(context).nextFocus();
                           }
                         },
                         onSaved: (pin1){
                           print(pin4);
                         },
                         textAlign: TextAlign.center,
                         keyboardType: TextInputType.number,
                         style: TextStyle(
                             fontSize: 30,
                             color: Color(0xff7B61FF)
                         ),
                         decoration: InputDecoration(
                           // hintText: "0",
                           border: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(10),
                               borderSide: BorderSide.none
                           ),


                         ),
                       ),
                     ),
                   ),
                 ],
               ),
             ],
           )),

            SizedBox(height: 50,),
            Expanded(
              flex: 3,
                child: Column(
                  children: [

                     Padding(
                   padding: const EdgeInsets.all(14.0),
                   child: InkWell(
                     onTap: (){
                       if(pin1.text.isEmpty || pin2.text.isEmpty || pin3.text.isEmpty || pin4.text.isEmpty) {
                         print("can't print less than 4 number");
                         showmessage("can't print less than 4 number",Colors.red);
                       }else{
                         print(pin1.text + pin2.text + pin3.text + pin4.text);
                         showmessage(pin1.text + pin2.text + pin3.text + pin4.text,Colors.green);
                       }
                     },
                     child: Container(
                       alignment: Alignment.center,
                       height: 51,
                       width: double.maxFinite,
                       decoration: BoxDecoration(
                         gradient:LinearGradient(
                         begin: Alignment.topLeft,
                          end: Alignment(0.8, 1),
                          colors: <Color>[
                          Color(0xff7C62FF),
                          Color(0xffBA62FF),

                          ],
                          tileMode: TileMode.mirror,

                         ),
                         borderRadius: BorderRadius.circular(20)
                       ),
                       child: Text("Запросить еще раз",
                       style: TextStyle(
                         color: Colors.white,
                         fontSize: 18,
                         fontWeight: FontWeight.w700
                       ),),
                     ),
                   ),
                 ),
                    SizedBox(height: 20,),
                    keybord(),

                   ],),
            )

          ],
        ),
      ),
    );
  }

  Widget keybord(){
    return Container(

      width: double.maxFinite,
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              mainAxisExtent: 80
          ),
        itemCount: 12,
        itemBuilder: (context,index) {
          return InkWell(
            onTap:(){
              fillInput(index);
            },
            child: Center(
                child: index == 11
                    ? Icon(Icons.backspace_outlined,color:Color(0xff7C62FF),size: 30 ,)
                    : index == 9 ? Text("")
                    : index == 10 ? Text("0",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 25
                    ),)
                      :Text("${index+1}",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 25
                  ),)
            ),
          );
        }),
    );
  }


  fillInput(index){
    if(index == 10){
      setState(() {


         if(pin1.text.isEmpty){
           pin1.text =  (0).toString();
         }else{
           if(pin2.text.isEmpty){
             pin2.text =  (0).toString();
           }else{
             if(pin3.text.isEmpty){
               pin3.text =  (0).toString();
             }else{
               if(pin4.text.isEmpty){
                 pin4.text =  (0).toString();
               }else{

               }
             }
           }
         }
      });
    }else if(index == 11){
      setState(() {
        if(!pin4.text.isEmpty){
          pin4.text = "";
        }else{
          if(!pin3.text.isEmpty){
            pin3.text = "";
          }else{
            if(!pin2.text.isEmpty){
              pin2.text = "";
            }else{
              if(!pin1.text.isEmpty){
                pin1.text = "";
              }else{

              }
            }
          }
        }
      });
    }else if(index == 9){

    }else{
      setState(() {
        if(pin1.text.isEmpty){
          pin1.text = (index+1).toString();
        }else{
          if(pin2.text.isEmpty){
            pin2.text = (index+1).toString();
          }else{
            if(pin3.text.isEmpty){
              pin3.text = (index+1).toString();
            }else{
              if(pin4.text.isEmpty){
                pin4.text = (index+1).toString();
              }else{

              }
            }
          }
        }

      });
    }
  }


  showmessage(data,Color color){
    ScaffoldMessenger.of(context).showSnackBar(

        SnackBar(
          backgroundColor: color,
      content: Text("Введите код = ${data}"),
    ));
  }
}
