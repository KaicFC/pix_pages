import 'package:flutter/material.dart';
import 'package:nimia/chave_invalida_page.dart';

class CadastroRealizadoPage extends StatefulWidget {
  const CadastroRealizadoPage({Key? key}) : super(key: key);

  @override
  State<CadastroRealizadoPage> createState() => _CadastroRealizadoPageState();
}

class _CadastroRealizadoPageState extends State<CadastroRealizadoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 33,
                          width: 33,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(255, 21, 61, 56),
                          ),
                          child: const Center(
                            child: Icon(Icons.check, color: Colors.white),
                          ),
                        ),
                        const Icon(
                          Icons.close,
                          color: Color.fromARGB(255, 255, 83, 79),
                          size: 22,
                        )
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 27),
                    child: Text(
                      'Cadastro realizado com sucesso!',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 40),
                    child: Text(
                      'Pix Chave CPF!',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color.fromARGB(255, 49, 46, 45),
                      ),
                    ),
                  ),
                  const Text(
                    '123.123.123-12',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 60,
              width: double.maxFinite,
              color: const Color.fromARGB(255, 255, 83, 79),
              child: const Center(
                child: Text(
                  'Compartilhar',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: GestureDetector(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: ((context) => const ChaveInvalida()),
          ),
        ),
        child: Container(
          height: 75,
          width: double.maxFinite,
          color: const Color.fromARGB(255, 228, 228, 228),
          child: const Center(
            child: Text(
              'Finalizar',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Color.fromARGB(255, 255, 83, 79),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
