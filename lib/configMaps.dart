import 'package:firebase_auth/firebase_auth.dart';
import 'package:carly_app/Models/allUsers.dart';

String mapKey = "AIzaSyCDtQTWefjNLGbxc7Ex1H5_TAOJ4xwEr2w";

User? firebaseUser;

Users? userCurrentInfo;

int driverRequestTimeOut = 40;
String statusRide = "";
String rideStatus = "Driver is Coming";
String carDetailsDriver = "";
String driverName = "";
String driverphone = "";

double starCounter=0.0;
String title="";
String carRideType="";

String serverToken = "key=AAAAgyudES0:APA91bGZjOc3Dje2kxGTfvUicXFA8XaeOGB3WTpcp0DxBEOwondnXAVt-_koh_l_iJGeO6Czt2mEq8x65EvDuJIZ_LCqgY0hkWQ3bqU5mBjspjCMAdz_pQ8QBNyru3AFLuWIgq9op3cs";