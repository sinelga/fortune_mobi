library zodiachtml;

import '../domains.dart';

createhtmlarr(List<Zodiac> zodiacarr) {

  var strarrbuff = new List<String>(); 
  
  zodiacarr.forEach((item) {
    
    var name = item.name;
    var image = "<img id='"+item.name+"' src='images/"+item.image+".png' class= '' alt='"+item.name+"'>";
    
    var outstr = "<div id='"+item.name+"' class='media'> <a class='pull-left' href='#'> ${image} </a><div class='media-body'><i class='icon-chevron-right pull-right icon-large'></i> <h4 class='media-heading pull-right zodicaname'>"+item.name+"</h4></div></div>";
    
    strarrbuff.add(outstr);  
  });
  
  return strarrbuff;
  
}