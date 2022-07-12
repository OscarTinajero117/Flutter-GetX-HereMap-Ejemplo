// To parse this JSON data, do
//
//     final direcciones = direccionesFromJson(jsonString);

class Direcciones {
  Direcciones({
    required this.nombre,
    required this.calles,
    required this.numero,
    required this.entreCalles,
    required this.colonia,
    required this.latitud,
    required this.longitud,
  });

  String nombre;
  String calles;
  int numero;
  String entreCalles;
  String colonia;
  double latitud;
  double longitud;

  factory Direcciones.fromJson(Map<String, dynamic> json) => Direcciones(
        nombre: json["nombre"],
        calles: json["calles"],
        numero: json["numero"],
        entreCalles: json["entre_calles"],
        colonia: json["colonia"],
        latitud: json["latitud"].toDouble(),
        longitud: json["longitud"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "nombre": nombre,
        "calles": calles,
        "numero": numero,
        "entre_calles": entreCalles,
        "colonia": colonia,
        "latitud": latitud,
        "longitud": longitud,
      };

  Direcciones copyWith({
    required String nombre,
    required String calles,
    required int numero,
    required String entreCalles,
    required String colonia,
    required double latitud,
    required double longitud,
  }) =>
      Direcciones(
        nombre: nombre,
        calles: calles,
        numero: numero,
        entreCalles: entreCalles,
        colonia: colonia,
        latitud: latitud,
        longitud: longitud,
      );
}
