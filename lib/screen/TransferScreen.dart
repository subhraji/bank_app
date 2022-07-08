import 'package:flutter/material.dart';

class TransferScreen extends StatefulWidget {
  const TransferScreen({Key? key}) : super(key: key);

  @override
  State<TransferScreen> createState() => _TransferScreenState();
}

class _TransferScreenState extends State<TransferScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: ListView(
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Stack(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey[500],
                      backgroundImage:
                      NetworkImage("https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YXZhdGFyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
                      radius: 20,
                    ),
                    Positioned(
                      right: 1.0,
                      child: CircleAvatar(
                        backgroundColor: Colors.red[400],
                        radius: 5,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(child: Center(child: Text("Transfer", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),))),
              SizedBox(width:20,),
              Container(
                  height: 25,
                  width: 25,
                  child: Image.network('https://cdn-icons-png.flaticon.com/128/7030/7030517.png')),
              SizedBox(width: 10,)
            ],
          ),
          Container(
            margin: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.all(
                  Radius.circular(15.0) //                 <--- border radius here
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: 110,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.yellow.shade100, Colors.white],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15.0),
                        topRight: Radius.circular(15.0)//                 <--- border radius here
                    ),
                  ),
                  child: ListView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0, left: 20),
                        child: Text("Current Balance", style: TextStyle(fontSize: 14.0),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, left: 20),
                        child: Text("\$12567.89", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 90,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.lightBlue.shade800, Colors.purpleAccent.shade100],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15.0),
                      bottomRight: Radius.circular(15.0)//                 <--- border radius here
                    ),
                  ),
                  child: ListView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0, left: 20),
                        child: Text("8003 5655 8090 5659", style: TextStyle(fontSize: 20.0,color: Colors.white),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, left: 20),
                        child: Text("05 / 2025", style: TextStyle(fontSize: 14.0, color: Colors.white),),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10),
            child: Column(
              children: [
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                        Radius.circular(15.0)
                    ),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 20,),
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Colors.green.shade300, Colors.yellow.shade100],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter),
                          borderRadius: BorderRadius.all(
                            Radius.circular(80)
                          ),
                        ),
                        height: 50,
                        width: 50,
                        child: Center(child: Text("A", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),)),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Evelyn Smith", style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),),
                          SizedBox(height: 5),
                          Text("AW Bank UNI 009736 7684434", style: TextStyle(fontSize: 13, color: Colors.grey.shade700),)
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                        Radius.circular(15.0)
                    ),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 20,),
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Colors.purple.shade100, Colors.blue.shade100],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter),
                          borderRadius: BorderRadius.all(
                              Radius.circular(80)
                          ),
                        ),
                        height: 50,
                        width: 50,
                        child: Center(child: Text("B", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),)),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Berry Berry", style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),),
                          SizedBox(height: 5),
                          Text("AW Bank UNI 009736 7684434", style: TextStyle(fontSize: 13, color: Colors.grey.shade700),)
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                        Radius.circular(15.0)
                    ),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 20,),
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Colors.green.shade300, Colors.yellow.shade100],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter),
                          borderRadius: BorderRadius.all(
                              Radius.circular(80)
                          ),
                        ),
                        height: 50,
                        width: 50,
                        child: Center(child: Text("C", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),)),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Carlin Smith", style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),),
                          SizedBox(height: 5),
                          Text("AW Bank UNI 009736 7684434", style: TextStyle(fontSize: 13, color: Colors.grey.shade700),)
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                        Radius.circular(15.0)
                    ),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 20,),
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Colors.purple.shade100, Colors.blue.shade100],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter),
                          borderRadius: BorderRadius.all(
                              Radius.circular(80)
                          ),
                        ),
                        height: 50,
                        width: 50,
                        child: Center(child: Text("D", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),)),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Devid Smith", style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),),
                          SizedBox(height: 5),
                          Text("AW Bank UNI 009736 7684434", style: TextStyle(fontSize: 13, color: Colors.grey.shade700),)
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      )
    );
  }
}
