import 'package:flutter/cupertino.dart';
import 'package:carly_app/Models/address.dart';
import 'package:carly_app/Models/history.dart';

class AppData extends ChangeNotifier {

  Address pickUpLocation = Address(placeFormattedAddress: '', placeName: '', placeId: '', latitude: 0.0, longitude: 0.0,);
  Address dropOffLocation = Address(placeFormattedAddress: '', placeName: '', placeId: '', latitude: 0.0, longitude: 0.0,);

  String earnings = "0";
  int countTrips = 0;
  List<String> tripHistoryKeys = [];
  List<History> tripHistoryDataList = [];

  void updatePickUpLocationAddress(Address pickUpAddress) {
    pickUpLocation = pickUpAddress;
    notifyListeners();
  }

  void updateDropOffLocationAddress(Address dropOffAddress) {
    dropOffLocation = dropOffAddress;
    notifyListeners();
  }

  //history
  void updateEarnings(String updatedEarnings) {
    earnings = updatedEarnings;
    notifyListeners();
  }

  void updateTripsCounter(int tripCounter) {
    countTrips = tripCounter;
    notifyListeners();
  }

  void updateTripKeys(List<String> newKeys) {
    tripHistoryKeys = newKeys;
    notifyListeners();
  }

  void updateTripHistoryData(History eachHistory) {
    tripHistoryDataList.add(eachHistory);
    notifyListeners();
  }
}
