import 'package:bargats/Repository/Models/mesas_model.dart';
import 'package:flutter/material.dart';
import '../../Componentes/item_widget.dart';
import '../../Repository/mesas_repository.dart';

class MesasPage extends StatelessWidget {
  const MesasPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 15,
            crossAxisSpacing: 15,
          ),
          children: [
            ItemWidget(status: StatusMesa.ocupada, index: 1, valor: 35),
            ItemWidget(status: StatusMesa.livre, index: 2, valor: 0),
            ItemWidget(status: StatusMesa.fechamento, index: 3, valor: 150),
            ItemWidget(status: StatusMesa.livre, index: 4, valor: 0),
            ItemWidget(status: StatusMesa.ocupada, index: 5, valor: 90),
            ItemWidget(status: StatusMesa.livre, index: 6, valor: 0),
            ItemWidget(status: StatusMesa.livre, index: 7, valor: 0),
            ItemWidget(status: StatusMesa.livre, index: 8, valor: 0),
            ItemWidget(status: StatusMesa.livre, index: 9, valor: 0),
            ItemWidget(status: StatusMesa.livre, index: 10, valor: 0),
            ItemWidget(status: StatusMesa.livre, index: 11, valor: 0),
            ItemWidget(status: StatusMesa.livre, index: 12, valor: 0),
            ItemWidget(status: StatusMesa.livre, index: 13, valor: 0),
          ],
        ),
      ),
    );
  }

  //       child: FutureBuilder<List<MesasModel>>(
  //         future: repository.fetchMesas(),
  //         initialData: const [],
  //         builder: (context, snapshot) {
  //           if (snapshot.connectionState == ConnectionState.done &&
  //               snapshot.hasData) {
  //             return _BuildGridMesas(snapshot.data!);
  //           }
  //           if (snapshot.hasError) {
  //             return Center(
  //               child: Text(
  //                 'Erro ao buscar informações das mesas',
  //                 style: TextStyle(
  //                   color: Colors.red,
  //                   fontWeight: FontWeight.bold,
  //                 ),
  //               ),
  //             );
  //           }
  //           return Center(
  //             child: CircularProgressIndicator(),
  //           );
  //         },
  //       ),
  //     ),
  //   );
  // }

//   List<Widget> _buildItemCard(List<MesasModel> listaMesas) {
//     var lista = <Widget>[];
//     for (var i = 0; i < listaMesas.length; i++) {
//       var mesa = listaMesas[i];
//       lista.add(
//         ItemWidget(
//           status: stringToStatus(mesa.mesEstado),
//           index: i + 1,
//           valor: mesa.mesValor,
//         ),
//       );
//     }
//     return lista;
//   }

//   GridView _BuildGridMesas(List<MesasModel> listaMesas) {
//     return GridView(
//       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: 3,
//         mainAxisSpacing: 15,
//         crossAxisSpacing: 15,
//       ),
//       children: _buildItemCard(listaMesas),
//     );
//   }

//   fetchMesas() {}
// }
}
