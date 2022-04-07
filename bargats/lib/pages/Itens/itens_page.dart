import 'package:bargats/core/app_textstyles.dart';
import 'package:flutter/material.dart';

class ItensPage extends StatelessWidget {
  const ItensPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Tela de Itens',
          style: AppTextStyles.buttonTextBlack,
        ),
      ),
    );
  }
}
