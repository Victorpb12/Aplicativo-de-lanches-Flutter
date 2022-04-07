import 'package:bargats/core/app_colors.dart';
import 'package:bargats/core/app_images.dart';
import 'package:bargats/core/app_textstyles.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondary,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              child: Image.asset(AppImages.logo),
            ),
            Text(
              'Usuário',
              style: AppTextStyles.texto,
            ),
            TextFormField(),
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              height: 39,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed('/home');
                },
                child: Text('Acessar', style: AppTextStyles.buttonTextBlack),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(AppColors.primary)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
