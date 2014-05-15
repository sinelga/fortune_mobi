library luckyteller;

import 'package:angular/angular.dart';
import "package:dartapp/domains.dart";
import "package:js/js.dart" as js;
import "package:jsonp/jsonp.dart" as jsonp;
import 'dart:async';
import 'dart:math';
//import 'dart:html';

var fortuneTellerarr = new List<FortuneTeller>();

@Component(selector: 'luckyteller', templateUrl: 'packages/dartapp/luckyTeller/luckyteller.html', applyAuthorStyles: true, cssUrl: 'packages/dartapp/luckyTeller/luckyteller.css', publishAs: 'cmp')
class Luckyteller {
  @NgOneWay('zodiacobj')
  Zodiac zodiacobj;
  @NgTwoWay('zodiacwasSelected')
  bool zodiacwasSelected;
  @NgOneWay('luckyTeller')
  FortuneTeller luckyTeller;

  Luckyteller() {

    if (fortuneTellerarr.isEmpty) {
      print("Start empty");

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

      print("Start  NOT empty");
      selectLuckyteller();


    }


  }

  closeLuckyteller() {

    zodiacwasSelected = false;

  }

  selectLuckyteller() {
    var rng = new Random();
    var luckyid = rng.nextInt(fortuneTellerarr.length);
    luckyTeller = fortuneTellerarr[luckyid];

  }

}


