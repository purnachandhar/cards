import 'package:cloud_firestore/cloud_firestore.dart';

class UserDetails{

  static const BrideName = 'brideName';
  static const GroomName = 'groomName';
  static const DateOfWedding = 'date';
  static const Place = 'place';
  static const Location = 'location';

  String? brideName;
  String? groomName;
  String? date;
  String? place;
  String? location;

  UserDetails(
      {this.brideName, this.groomName, this.date, this.place, this.location});
  UserDetails.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> snapshot) {
    brideName =snapshot.data()![BrideName];
    groomName =snapshot.data()![GroomName];
    date =snapshot.data()![DateOfWedding];
    place =snapshot.data()![Place];
    location =snapshot.data()![Location];
  }
}