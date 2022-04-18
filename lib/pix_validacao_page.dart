import 'package:flutter/material.dart';
import 'package:nimia/cadastro_realizado_page.dart';

class ValidacaoPage extends StatefulWidget {
  const ValidacaoPage({Key? key}) : super(key: key);

  @override
  State<ValidacaoPage> createState() => _ValidacaoPageState();
}

class _ValidacaoPageState extends State<ValidacaoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 24, right: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () => Navigator.pop(context),
                child: const Icon(
                  Icons.arrow_back_ios,
                  color: Color.fromARGB(255, 255, 83, 79),
                  size: 20,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Center(
                    child: GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: ((context) => const CadastroRealizadoPage()),
                        ),
                      ),
                      child: const Text(
                        'Validação token/ Senha',
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
