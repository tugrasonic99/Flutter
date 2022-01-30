import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:graph_demo/grafik_yarat_1.dart';
import 'package:graph_demo/grafik_yarat_2.dart';
import 'package:graph_demo/tl_dolar.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    var t1=Tl_Dolar(dolar_deger: 1.507,yil: 2010 );
    var t2=Tl_Dolar(dolar_deger: 1.607,yil: 2011 );
    var t3=Tl_Dolar(dolar_deger: 1.801,yil: 2012 );
    var t4=Tl_Dolar(dolar_deger: 1.905,yil: 2013 );
    var t5=Tl_Dolar(dolar_deger: 2.192,yil: 2014 );
    var t6=Tl_Dolar(dolar_deger: 2.725,yil: 2015 );
    var t7=Tl_Dolar(dolar_deger: 3.023,yil: 2016 );
    var t8=Tl_Dolar(dolar_deger: 3.650,yil: 2017 );
    var t9=Tl_Dolar(dolar_deger: 4.820,yil: 2018 );
    var t10=Tl_Dolar(dolar_deger: 5.681,yil: 2019 );

    List<Tl_Dolar> liste=[t1,t2,t3,t4,t5,t6,t7,t8,t9,t10];




    return DefaultTabController(length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Graph Demo: Dolat/TL Kur Değişimi"),
            bottom: TabBar(
              tabs: [
                Tab(text: "Sütun Grafiği"),
                Tab(text: "Çizgi Grafiği")
              ],
            ),
          ),
          body: TabBarView(
            children: [
              GrafikYarat1(liste: liste),
              GrafikYarat2(liste: liste),
            ],
          ),

        ));
  }

}
