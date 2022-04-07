import 'package:bargats/Repository/Models/comanda_model.dart';
import 'package:bargats/Repository/comandas_repository.dart';
import 'package:bargats/core/app_textstyles.dart';
import 'package:flutter/material.dart';

class ConsumoPage extends StatelessWidget {
  //final repository = ComandasRepository();
  final int numeroMesa;
  ConsumoPage({
    Key? key,
    required this.numeroMesa,
  }) : super(key: key);

  _buildList() {
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (context, index) {
        //final item = model.itens![index];
        return ListTile(
          title: Text(
            'Coca Cola',
            style: TextStyle(
                color: Colors.black45,
                fontWeight: FontWeight.bold,
                fontSize: 18),
          ),
          trailing: Text(
            'R\$ 5.00',
            style: AppTextStyles.textoPreto,
          ),
        );
      },
    );
  }

  _buildButton() {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0, right: 30.0),
      child: Container(
        color: Colors.black,
        height: 40,
        width: double.infinity,
        child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.black)),
          onPressed: () {},
          child: Text(
            'Encerrar',
            style: AppTextStyles.buttonTextWhite,
          ),
        ),
      ),
    );
  }

  _buildTotal() {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            'Total',
            style: AppTextStyles.textoPreto,
          ),
          Text(
            'R\$ 15,00',
            style: AppTextStyles.textoPreto,
          ),
        ],
      ),
    );
  }

  _buildBody() {
    return Column(
      children: [
        Expanded(
          flex: 3,
          child: _buildList(),
        ),
        Expanded(
          flex: 1,
          child: _buildTotal(),
        ),
        _buildButton(),
        SizedBox(
          height: 30,
        )
      ],
    );
  }

  // _buildLoading() {
  //   return Center(
  //     child: CircularProgressIndicator(),
  //   );
  // }

  // _buildError() {
  //   return Center(
  //     child: Text(
  //       'Houve um erro ao buscar o consumo!',
  //       style: TextStyle(
  //         color: Colors.red,
  //         fontWeight: FontWeight.bold,
  //       ),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Produtos | Mesa ${numeroMesa.toString().padLeft(2, '0')}',
          style: AppTextStyles.buttonTextBlack,
        ),
      ),
      body: _buildBody(),
    );
  }
}
