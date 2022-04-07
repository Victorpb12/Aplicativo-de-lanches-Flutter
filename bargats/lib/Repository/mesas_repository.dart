// import 'package:bargats/Repository/Models/mesas_model.dart';
// import 'package:dio/dio.dart';

// class MesasRepository {
//   final dio = Dio();

//   Future<List<MesasModel>> fetchMesas() async {
//     try {
//       final response = await dio.get('');
//       final lista = response.data as List;
//       return lista.map((e) => MesasModel.fromMap(e)).toList();
//     } catch (e) {
//       throw Exception(e);
//     }
//   }
//}
