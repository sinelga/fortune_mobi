library dart_controller;

import 'package:angular/angular.dart';
//import "package:js/js.dart" as js;
//import "package:jsonp/jsonp.dart" as jsonp;
//import 'dart:async';
import "package:dartapp/domains.dart";
import "package:dartapp/zodiacmaker/zodiacmaker.dart" as zodiacmaker;


@Controller(selector: '[zodiacs]', publishAs: 'ctrl')
class DartController {
  List zodiacarr;
  List fortuneTellerarr;
  Zodiac selectedZodiac;
  bool zodiacwasSelected;

  DartController() {

    zodiacarr = zodiacmaker.create();
    zodiacwasSelected = false;
    fortuneTellerarr = new List<FortuneTeller>();

    //    _loadDataJsonp();
  }

  void _loadDataJsonp() {

    //     Future<js.Proxy> result = jsonp.fetch(
    //
    //         uri: "http://146.185.151.26/redis?redisid=it_IT:news:Home&callback=?"
    //
    //     );
    //
    //     result.then((js.Proxy proxy) {
    //
    //       display(proxy);
    //
    //     });

    //     getArticles("fi_FI","finances","Ulkomaat");

  }

  void display(var data) {

    //    for (var i=0;i < 12;i++){
    //
    //      ForMark forMark = new ForMark();
    //      forMark.Cont = data[i]["Cont"];
    //      forMark.ImageLink = data[i]["ImgLink"];
    //      forMark.Title = data[i]["Title"];
    //      forMarkList.add(forMark);
    //
    //    }
    //    articlesListLoaded = true;

  }

  void selectZodiac(Zodiac zodiac) {
    selectedZodiac = zodiac;

    zodiacwasSelected = true;
    
//    if (fortuneTellerarr.isEmpty) {
//
//      Future<js.Proxy> resulttellers = jsonp.fetch(//select * from html where url="http://ellit.fi/horoskoopit/horoskooppimerkit/horoskooppi-vesimies-201-192" and xpath="//div[@class='columnA']/p"
//      uri: "http://146.185.140.138/fortunetellers?callback=?");
//
//      resulttellers.then((js.Proxy proxy) {
//
//        for (var i = 0; i < proxy.length; i++) {
//
//          var teller = new FortuneTeller();
//          teller.id = proxy[i]["id"];
//          teller.name = proxy[i]["name"];
//          teller.phone = proxy[i]["phone"];
//          teller.location = proxy[i]["location"];
//          teller.moto = proxy[i]["moto"];
//          teller.desc = proxy[i]["desc"];
//          fortuneTellerarr.add(teller);
//
//        }
//      });
//
//    }
    
    
  }


}

