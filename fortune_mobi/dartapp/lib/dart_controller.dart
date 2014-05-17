library dart_controller;

import 'package:angular/angular.dart';
import "package:js/js.dart" as js;
import "package:jsonp/jsonp.dart" as jsonp;
import 'dart:async';
import "package:dartapp/domains.dart";
import "package:dartapp/zodiacmaker/zodiacmaker.dart" as zodiacmaker;


@Controller(selector: '[zodiacs]', publishAs: 'ctrl')
class DartController {
  List zodiacarr;
  List fortuneTellerarr;
  Zodiac selectedZodiac;
  bool zodiacwasSelected;
  String zodiacdesc;
  bool zodiacdescOK;

  DartController() {

    zodiacarr = zodiacmaker.create();
    zodiacwasSelected = false;
    zodiacdescOK= false;
    fortuneTellerarr = new List<FortuneTeller>();

  }

  void selectZodiac(Zodiac zodiac) {
    selectedZodiac = zodiac;

    zodiacwasSelected = true;
   var link ="http://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20html%20where%20url%3D%22http%3A%2F%2Fellit.fi%2Fhoroskoopit%2Fhoroskooppimerkit%2F"+zodiac.link+"%22%20and%20xpath%3D%22%2F%2Fdiv%5B%40class%3D'columnA'%5D%2Fp%22&format=json&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys&callback=?";
    
    Future<js.Proxy> resultdefzodiac = jsonp.fetch(//select * from html where url="http://ellit.fi/horoskoopit/horoskooppimerkit/horoskooppi-vesimies-201-192" and xpath="//div[@class='columnA']/p"
    uri: link);
    
    resultdefzodiac.then((js.Proxy proxy) {
      
      reseivedzodiacData(proxy);
      
    });        
    
  }
  
  
  void  reseivedzodiacData(data) {
    var countres = data["query"]["count"];
    var outres;
    if (countres == 0){
 
      outres = selectedZodiac.defzodiac;
            
    } else {
      
      var outitems = data["query"]["results"]["p"];
      outres =outitems[0];
                
    }
    zodiacdesc = outres;
    zodiacdescOK = true;
    print(zodiacdesc);
    
            
  }


}

