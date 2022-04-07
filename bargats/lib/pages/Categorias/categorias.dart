import 'package:bargats/core/app_images.dart';
import 'package:bargats/core/app_textstyles.dart';
import 'package:flutter/material.dart';

class CategoriasPage extends StatelessWidget {
  final int numeroMesa;
  const CategoriasPage({
    Key? key,
    required this.numeroMesa,
  }) : super(key: key);

  _buildCard(String title, String image) {
    return Stack(
      children: [
        Container(
            width: 155,
            height: 155,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  offset: Offset(2.0, 2.0),
                  blurRadius: 2,
                  spreadRadius: 1,
                )
              ],
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
            )),
        Positioned(
          bottom: 35,
          left: 5,
          child: Container(
            alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.7),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Center(
              child: Text(
                title,
                style: AppTextStyles.tituloCategoria,
              ),
            ),
          ),
        )
      ],
    );
  }

  _buildBody() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
        children: <Widget>[
          _buildCard('Bebidas', AppImages.bebidas),
          _buildCard('Lanches', AppImages.hamburguer),
          _buildCard('Pizzas', AppImages.pizzas),
          _buildCard('Sobremesas', AppImages.sobremesas),
          _buildCard('Sorvetes', AppImages.sorvetes),
          _buildCard('Porçoes', AppImages.porcoes),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Categorias | Mesa ${numeroMesa.toString().padLeft(2, '0')}',
          style: AppTextStyles.buttonTextBlack,
        ),
      ),
      body: _buildBody(),
    );
  }
}
