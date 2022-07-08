import 'package:bank_app/model/bar_chart_model.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class ReportScreen extends StatefulWidget {
  const ReportScreen({Key? key}) : super(key: key);

  @override
  State<ReportScreen> createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {

  final List<BarChartModel> data = [
    BarChartModel(
      year: "JAN",
      financial: 400,
      color: charts.ColorUtil.fromDartColor(Colors.purple.shade200),
    ),
    BarChartModel(
      year: "FEB",
      financial: 500,
      color: charts.ColorUtil.fromDartColor(Colors.purple.shade200),
    ),
    BarChartModel(
      year: "MAR",
      financial: 200,
      color: charts.ColorUtil.fromDartColor(Colors.purple.shade200),
    ),
    BarChartModel(
      year: "APR",
      financial: 300,
      color: charts.ColorUtil.fromDartColor(Colors.purple.shade200),
    ),
    BarChartModel(
      year: "MAY",
      financial: 550,
      color: charts.ColorUtil.fromDartColor(Colors.purple.shade200),
    ),
    BarChartModel(
      year: "JUN",
      financial: 300,
      color: charts.ColorUtil.fromDartColor(Colors.purple.shade200),
    )
  ];
  @override
  Widget build(BuildContext context) {

    List<charts.Series<BarChartModel, String>> series = [
      charts.Series(
        id: "financial",
        data: data,
        domainFn: (BarChartModel series, _)=>series.year,
        measureFn: (BarChartModel series, _)=>series.financial,
        colorFn: (BarChartModel series, _)=>series.color,
      ),
    ];

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
                      backgroundColor: Colors.grey[300],
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
              Expanded(child: Center(child: Text("Reports", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),))),
              SizedBox(width:50,)
            ],
          ),
          Row(
            children: [
              SizedBox(width: 10,),
              Expanded(
                child: Container(
                  height: 100,
                    child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20.0, left: 10.0),
                              child: Text("Money In"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 7.0, left: 10.0),
                              child: Text("+\$3,456.98", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                            ),
                          ],
                        ),
                      color: Colors.yellow.shade600,
                    )
                ),
              ),
              SizedBox(width: 10,),
              Expanded(
                child: Container(
                    height: 100,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20.0, left: 10.0),
                            child: Text("Money Out"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 7.0, left: 10.0),
                            child: Text("-\$3,456.98", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                          ),
                        ],
                      ),
                      color: Colors.blue.shade300,
                    )
                ),
              ),
              SizedBox(width: 10,),
            ],
          ),

          Container(
            padding: EdgeInsets.all(10),
            height: 420,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.purple.shade50, Colors.yellow.shade50],
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft),
                  borderRadius: BorderRadius.all(
                      Radius.circular(10)
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 20.0),
                      child: Text("Monthly Spending"),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10, bottom: 20, top: 10),
                        child: charts.BarChart(
                          series,
                          animate: true,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, left: 10, right: 10),
            decoration: BoxDecoration(
              color: Colors.blue.shade100,
              borderRadius: BorderRadius.all(
                  Radius.circular(15)
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15,left: 20.0),
                  child: Text("In Budget", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black87),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, bottom: 15, top: 10),
                  child: Row(
                    children: [
                      Expanded(child: Text("Shopping", style: TextStyle(fontSize: 13, color: Colors.grey.shade600),)),
                      Expanded(child: Align(alignment: Alignment.bottomRight,child: Text("\$50.00/\$100.00", style: TextStyle(fontSize: 16, color: Colors.black87,),))),
                      SizedBox(width: 20,)
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 10),
            decoration: BoxDecoration(
              color: Colors.pink.shade100,
              borderRadius: BorderRadius.all(
                  Radius.circular(15)
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15,left: 20.0),
                  child: Text("Out of Budget", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black87),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, bottom: 15, top: 10),
                  child: Row(
                    children: [
                      Expanded(child: Text("Shopping", style: TextStyle(fontSize: 13, color: Colors.grey.shade600),)),
                      Expanded(child: Align(alignment: Alignment.bottomRight,child: Text("\$50.00/\$100.00", style: TextStyle(fontSize: 16, color: Colors.black87,),))),
                      SizedBox(width: 20,)
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      )
    );
  }
}
