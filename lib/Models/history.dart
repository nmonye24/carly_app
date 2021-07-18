import 'package:firebase_database/firebase_database.dart';

class History
{
  late String paymentMethod;
  late String createdAt;
  late String status;
  late String fares;
  late String dropOff;
  late String pickup;

  History({required this.paymentMethod, required this.createdAt, required this.status, required this.fares, required this.dropOff, required this.pickup});

  History.fromSnapshot(DataSnapshot snapshot)
  {
    paymentMethod = snapshot.value["payment_method"];
    createdAt = snapshot.value["created_at"];
    status = snapshot.value["status"];
    fares = snapshot.value["fares"];
    dropOff = snapshot.value["drop-off_address"];
    pickup = snapshot.value["pickup_address"];
  }
}