// import 'dart:convert';

// class MesasModel {
//   final int mesCodigo;
//   final String mesNome;
//   final String mesEstado;
//   final double mesValor;

//   MesasModel({
//     required this.mesCodigo,
//     required this.mesNome,
//     required this.mesEstado,
//     required this.mesValor,
//   });

//   Map<String, dynamic> toMap() {
//     final result = <String, dynamic>{};

//     result.addAll({'mesCodigo': mesCodigo});
//     result.addAll({'mesNome': mesNome});
//     result.addAll({'mesEstado': mesEstado});
//     result.addAll({'mesValor': mesValor});

//     return result;
//   }

//   factory MesasModel.fromMap(Map<String, dynamic> map) {
//     return MesasModel(
//       mesCodigo: map['mesCodigo']?.toInt() ?? 0,
//       mesNome: map['mesNome'] ?? '',
//       mesEstado: map['mesEstado'] ?? '',
//       mesValor: map['mesValor']?.toDouble() ?? 0.0,
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory MesasModel.fromJson(String source) =>
//       MesasModel.fromMap(json.decode(source));
// }
