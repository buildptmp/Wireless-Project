import 'package:url_launcher/url_launcher.dart';

class Map{
  Map();
  static Future<void> openMap(
      double Latitutde,
      double Longitute,
      ) async{
    String googleMapUrl  = "https://www.google.co.th/maps/search/?api=1&query=$Latitutde,$Longitute";
    if(await canLaunch(googleMapUrl)){
      await launch(googleMapUrl);
    } else {
      throw 'Could not open the Map';
    }
  }
}