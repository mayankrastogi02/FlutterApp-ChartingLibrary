import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:firstflutter_app/subscriber_chart.dart';
import 'package:firstflutter_app/subrciber_series.dart';


class HomePage extends StatelessWidget {

  final List<SubscriberSeries> data = [
    SubscriberSeries(
      year: "2008",
      subscribers: 10000000,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    SubscriberSeries(
      year: "2009",
      subscribers: 11000000,
      barColor: charts.ColorUtil.fromDartColor(Colors.red),
    ),
    SubscriberSeries(
      year: "2010",
      subscribers: 9000000,
      barColor: charts.ColorUtil.fromDartColor(Colors.green),
    ),
    SubscriberSeries(
      year: "2011",
      subscribers: 7000000,
      barColor: charts.ColorUtil.fromDartColor(Colors.purple),
    ),
    SubscriberSeries(
      year: "2012",
      subscribers: 15000000,
      barColor: charts.ColorUtil.fromDartColor(Colors.yellow),
    ),
  ];

  @override
  Widget build(BuildContext contec) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("MY GRAPH"),
      ),
      body: Center(
        child: SubscriberChart(
          data: data,
        )
      )
    );
  }
}