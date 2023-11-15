class RideHistoryModel{

  String? name, cityName, airport;
  double? fare;

  RideHistoryModel({this.name, this.cityName, this.airport, this.fare});
}

List<RideHistoryModel> rideHistory = [
  RideHistoryModel(name: 'Hamza' , airport: 'Isb Airport', cityName: 'Islamabad' , fare: 400.0),
  RideHistoryModel(name: 'Hamza' , airport: 'Karachi Airport', cityName: 'Peshawer' , fare: 300.0),
  RideHistoryModel(name: 'Ikram' , airport: 'Isb Airport', cityName: 'Islamabad' , fare: 400.0),

];