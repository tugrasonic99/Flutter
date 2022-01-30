import 'package:flutter/material.dart';
import 'package:graph_demo/tl_dolar.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class GrafikYarat1 extends StatelessWidget {

  final List<Tl_Dolar> liste;


  GrafikYarat1({required this.liste});

  @override
  Widget build(BuildContext context) {
    List<charts.Series<Tl_Dolar,String>> series=[
      charts.Series(
        id: "dolar",
        data: liste,
        domainFn: (Tl_Dolar series,_) => series.yil.toString(),
        measureFn: (Tl_Dolar series, _) => series.dolar_deger,
        colorFn: (Tl_Dolar series, _) =>charts.ColorUtil.fromDartColor(Colors.green)
      )
    ];
    return charts.BarChart(series,animate: true,);
  }
}
