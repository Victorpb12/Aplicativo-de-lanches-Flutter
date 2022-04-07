import 'package:bargats/core/app_colors.dart';
import 'package:bargats/core/app_textstyles.dart';
import 'package:bargats/pages/Config/config_page.dart';
import 'package:bargats/pages/Itens/itens_page.dart';
import 'package:bargats/pages/Mesas/mesas_page.dart';
import 'package:flutter/material.dart';

enum Paginas { inicio, mesas, itens, configuracao }

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 0;
  final _paginas = <Widget>[
    TelaInicial(),
    MesasPage(),
    ItensPage(),
    ConfigPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text(
          'Mesas | Comandas',
          style: AppTextStyles.buttonTextBlack,
        ),
      ),
      body: _paginas.elementAt(_index),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.red,
          currentIndex: _index,
          onTap: (index) {
            _index = index;
            setState(() {});
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_sharp), label: 'Início'),
            BottomNavigationBarItem(
                icon: Icon(Icons.apps_sharp), label: 'Mesas'),
            BottomNavigationBarItem(
                icon: Icon(Icons.inventory), label: 'Itens'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Config.'),
          ]),
    );
  }
}

class TelaInicial extends StatelessWidget {
  const TelaInicial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(10),
        height: 300,
        width: double.infinity,
        child: Column(children: [
          Text(
            'Comanda ou mesa',
            style: AppTextStyles.textoPreto,
          ),
          TextFormField(),
          SizedBox(
            height: 20,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            CustomButton(texto: 'Inserir Items'),
            CustomButton(texto: 'Ver Detalhes'),
          ])
        ]),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String texto;
  const CustomButton({
    Key? key,
    required this.texto,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 59,
      width: 115,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(AppColors.primary)),
        onPressed: () {},
        child: Text(
          texto,
          style: AppTextStyles.buttonTextBlack,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
