library luckyteller;

import 'package:angular/angular.dart';
import "package:dartapp/domains.dart";
import "package:js/js.dart" as js;
import "package:jsonp/jsonp.dart" as jsonp;
import 'dart:async';
import 'dart:math';
//import 'dart:html';
//Stream<js.Proxy> user_stream = jsonp.fetchMany("user");

//var start = false;
var fortuneTellerarr = new List<FortuneTeller>();
var zodiac = new Zodiac();
//var link;
Stopwatch watch;

@Component(selector: 'luckyteller', templateUrl: 'packages/dartapp/luckyTeller/luckyteller.html', applyAuthorStyles: true, cssUrl: 'packages/dartapp/luckyTeller/luckyteller.css', publishAs: 'cmp')
class Luckyteller {
  @NgOneWay('zodiacobj')
  Zodiac zodiacobj;
  @NgTwoWay('zodiacwasSelected')
  bool zodiacwasSelected;
  @NgOneWay('luckyTeller')
  FortuneTeller luckyTeller;
  @NgOneWay('zodiacdesc')
  String zodiacdesc;
  @NgTwoWay('zodiacdescOK')
  bool zodiacdescOK;

  Luckyteller() {

    if (fortuneTellerarr.isEmpty) {

      Future<js.Proxy> resulttellers = jsonp.fetch(//select * from html where url="http://ellit.fi/horoskoopit/horoskooppimerkit/horoskooppi-vesimies-201-192" and xpath="//div[@class='columnA']/p"
      uri: "http://146.185.140.138/fortunetellers?callback=?");

      resulttellers.then((js.Proxy proxy) {

        for (var i = 0; i < proxy.length; i++) {

          var teller = new FortuneTeller();
          teller.id = proxy[i]["id"];
          teller.name = proxy[i]["name"];
          teller.phone = proxy[i]["phone"];
          teller.location = proxy[i]["location"];
          teller.moto = proxy[i]["moto"];
          teller.desc = proxy[i]["desc"];
          fortuneTellerarr.add(teller);

        }
        selectLuckyteller();


      });

    } else {

      selectLuckyteller();

    }

  }
  
  
  closeLuckyteller() {

    zodiacwasSelected = false;
    zodiacdescOK = false;

  }

  selectLuckyteller() {

    var rng = new Random();
    var luckyid = rng.nextInt(fortuneTellerarr.length);
    luckyTeller = fortuneTellerarr[luckyid];
        
  }

}


