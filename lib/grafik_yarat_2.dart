import 'package:flutter/material.dart';
import 'package:graph_demo/tl_dolar.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class GrafikYarat2 extends StatelessWidget {

  final List<Tl_Dolar> liste;


  GrafikYarat2({required this.liste});

  @override
  Widget build(BuildContext context) {
    List<charts.Series<Tl_Dolar,num>> series=[
      charts.Series(
        id: "dolar",
        data: liste,
        domainFn: (Tl_Dolar series,_) => series.yil,
        measureFn: (Tl_Dolar series, _) => series.dolar_deger,
        colorFn: (Tl_Dolar series, _) =>charts.ColorUtil.fromDartColor(Colors.green)
      )
    ];
    return charts.LineChart(series,
      domainAxis: const charts.NumericAxisSpec(
        tickProviderSpec:
        charts.BasicNumericTickProviderSpec(zeroBound: false),
        viewport: charts.NumericExtents(2010.0, 2019.0),
      ),
      animate: true,);
  }
}
