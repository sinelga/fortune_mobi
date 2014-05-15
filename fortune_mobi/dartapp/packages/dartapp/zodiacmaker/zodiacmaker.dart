library zodiacmaker;

import '../domains.dart';
  
 create(){
   
   List<Zodiac> zodiacarr = new List<Zodiac>();
   
   Zodiac zodiac0 = new Zodiac();
   zodiac0.name ="Kauris";
   zodiac0.image ="capricorn";
   zodiac0.link ="horoskooppi-kauris-2212-191";
   zodiac0.defzodiac="Kauriit ovat sitkeitä ja kestäviä. Kauriit ovat vakavia ja kurinalaisia, ja he haluavat elämänsä olevan järjestelmällistä ja hyvin suunniteltua. Kauriilla pitää olla konkreettinen päämäärä, jotta hän tietää, mihin on menossa ja miksi. Kauris on kärsivällinen, varovainen ja erittäin käytännöllinen."; 
   zodiacarr.add(zodiac0);
   
   Zodiac zodiac1= new Zodiac();
   zodiac1.name ="Vesimies";
   zodiac1.image ="aquarius";
   zodiac1.link ="horoskooppi-vesimies-201-192";
   zodiac1.defzodiac="Vesimiehet ovat eläinratamme suuria oivaltajia, jotka pystyvät näkemään tulevaisuuden verhon lävitse. Tämä ainutlaatuinen lahjakkuus tekee vesimiehistä outoja ja usein yksinäisiä ihmisiä, joiden näkemykset ymmärretään lähes poikkeuksetta vain omien etujen ajamiseksi, vaikka vesimies aina ajattelee enemmän muita kuin itseään. Into tutkia ja keksiä uutta ovat vesimiehen hallitsevimmat piirteet. Selkeänäköisyys, omaleimaisuus, ennakkoluulottomuus ja arvaamattomuus ovat tyypillisiä vesimiehen ominaisuuksia."; 
   zodiacarr.add(zodiac1);
   
   Zodiac zodiac2 = new Zodiac();
   zodiac2.name ="Kalat";
   zodiac2.image ="pisces";
   zodiac2.link ="horoskooppi-kalat-202-203";
   zodiac2.defzodiac="Kalaihmiset ovat vuodenaikansa mukaisesti hyvin herkkiä ympärillään tapahtuville mielialan muutoksille. He vaistoavat tulevia asioita, vaikka eivät pysty todistamaan aavistuksiaan todeksi. Kalat elävät omassa herkässä maailmassaan. Heidän kauttaan elämässä tapahtuu jatkuvaa heräämistä ja alitajuista kehittymistä."; 
   zodiacarr.add(zodiac2);
   
   Zodiac zodiac3 = new Zodiac();
   zodiac3.name ="Oinas";
   zodiac3.image ="aries";
   zodiac3.link ="horoskooppi-oinas-213-194";
   zodiac3.defzodiac="Oinas on yleensä itsevarma, herkästi innostuva, yritteliäs, aloitekykyinen, impulsiivinen ja energinen. Kärsimättömyys kuuluu merkin suurimpiin heikkouksiin. Kaiken pitäisi tapahtua oinaan mielestä heti. Jos asiat eivät menekään oinaan mielen mukaan, hän ärsyyntyy herkästi. Oinas voi sortua myös aggressiivisuuteen. Pitkäjänteisyyttä vaativat tehtävät tuottavat monesti tämän piirteen takia oinaalle suuria vaikeuksia."; 
   zodiacarr.add(zodiac3);
   
   Zodiac zodiac4 = new Zodiac();
   zodiac4.name ="Härkä";
   zodiac4.image ="taurus";
   zodiac4.link ="horoskooppi-harka-204-205";
   zodiac4.defzodiac="Härkä on itsepäisyyteen saakka sitkeä, perusteellinen, asiallinen, harkitseva ja kärsivällinen. Hän osaa kuitenkin myös nautiskella elämän pienistä iloista.";
   zodiacarr.add(zodiac4);
   
   Zodiac zodiac5 = new Zodiac();
   zodiac5.name ="Kaksoset";
   zodiac5.image ="gemini";
   zodiac5.link ="horoskooppi-kaksoset-215-206";
   zodiac5.defzodiac="Vilkkaus, uteliaisuus, innostuneisuus, puheliaisuus ja nopea ajattelu ovat kaksosille tyypillisiä piirteitä. Kaksonen on koko ajan hyvin tietoinen kaikesta ympärillään tapahtuvasta. Hän ilmaisee nopeaälyisenä itseään helposti sekä suullisesti että kirjallisesti. Kaksonen on levoton ja liikkuva, mutta sopeutuu juuri siksi vaivatta uusiin olosuhteisiin.";
   zodiacarr.add(zodiac5);
   
   Zodiac zodiac6 = new Zodiac();
   zodiac6.name ="Rapu";
   zodiac6.image ="cancer";
   zodiac6.link ="horoskooppi-rapu-216-227";
   zodiac6.defzodiac="Ravulla on suojeleva, äidillinen maaemon luonne. Aikansa ilmiöitä seuraten ravut osaavat luoda ympärilleen turvallisen ja hellän ilmapiirin niin halutessaan. Ravun tyypillisiä ominaisuuksia ovat suojeluvaisto, sopeutuvuus, intuitio, hyvä muisti, huomaavaisuus ja myötätunto."; 
   zodiacarr.add(zodiac6);
   
   Zodiac zodiac7 = new Zodiac();
   zodiac7.name ="Leijona";
   zodiac7.image ="leo";
   zodiac7.link ="horoskooppi-leijona-237-228";
   zodiac7.defzodiac="Leijona on antelias, luova, johtamiskykyinen, elinvoimainen, arvokas ja viisas. Leijona on ihminen, joka luo itse oman arvomaailmansa ja on avoimesti ylpeä itsestään.";
   zodiacarr.add(zodiac7);
   
   Zodiac zodiac8 = new Zodiac();
   zodiac8.name ="Neitsyt";
   zodiac8.image ="virgo";
   zodiac8.link ="horoskooppi-neitsyt-238-229";
   zodiac8.defzodiac="Neitsyt huomaa heti, kun jokin asia ei ole kohdallaan tai oikeassa paikassa. Hän huolehtii muita merkkejä paremmin myös itsestään, ulkonäöstään ja kunnostaan. Neitsyen tyypillisiä ominaisuuksia ovatkin arvostelukyky, äärimmäinen tarkkuus, älykkyys, nopea käsityskyky ja hyvä terveys."; 
   zodiacarr.add(zodiac8);
   
   Zodiac zodiac9 = new Zodiac();
   zodiac9.name ="Vaaka";
   zodiac9.image ="libra";
   zodiac9.link ="horoskooppi-vaaka-239-2310";
   zodiac9.defzodiac="Tasapainoilu, kontaktikyky, diplomaattisuus, elämänmyönteisyys ja kyky nauttia elämästä ovat vaakaihmiselle ominaisia piirteitä. Mietteliäs ja herkkä vaaka etsii tasapainoa ja harmoniaa kaikkialta. Hän kaipaa huomiota enemmän kuin muut merkit, ja joskus hänen on vaikea olla yksin. Hyvät ihmissuhteet ovatkin avain vaa’an onneen ja tyytyväisyyteen. Niiden puute voi saada vaa'an masentumaan."; 
   zodiacarr.add(zodiac9);
   
   Zodiac zodiac10 = new Zodiac();
   zodiac10.name ="Skorpioni";
   zodiac10.image ="scorpio";
   zodiac10.link ="horoskooppi-skorpioni-2410-2211";
   zodiac10.defzodiac="Skorpionit ovat hyvin kiinnostuneita elämän alkemiallisista salaisuuksista ja tutkivat innokkaina elämää suurempia mysteerejä."; 
   zodiacarr.add(zodiac10);
   
   Zodiac zodiac11 = new Zodiac();
   zodiac11.name ="Jousimies";
   zodiac11.image ="sagittarius";
   zodiac11.link ="horoskooppi-jousimies-2311-2112";
   zodiac11.defzodiac="Jousimiehet ovat eläinradan suuria optimisteja, jotka ovat valmiita tekemään paljon töitä tulevaisuudessa häämöttävien mahdollisuuksien ja menestyksen eteen. Jokaisella jousimiehellä on oma vahva filosofiansa ja vankkumaton luottamus omiin ideoihinsa ja haaveisiinsa."; 
   zodiacarr.add(zodiac11);
   
   return zodiacarr;
        
 }
    
    
    
    