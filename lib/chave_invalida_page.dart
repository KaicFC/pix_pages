import 'package:flutter/material.dart';
import 'package:nimia/chaves_cadastradas_page.dart';

class ChaveInvalida extends StatefulWidget {
  const ChaveInvalida({Key? key}) : super(key: key);

  @override
  State<ChaveInvalida> createState() => _ChaveInvalidaState();
}

class _ChaveInvalidaState extends State<ChaveInvalida> {
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
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Icon(
                          Icons.close,
                          color: Color.fromARGB(255, 255, 83, 79),
                          size: 25,
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 29),
                    child: Text(
                      'Chave cadastrada em outra instituição!',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 24),
                    child: Text(
                      'O CPF 123.456. 789-00 já está cadastrado em outra instituição. Para cadastrar esta chave aqui com a gente é necessário que voçê descadastre lá para depois fazer este processo aqui novamente.',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
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
                  'Cadastrar outra chave',
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
            builder: ((context) => const ChavesCadastradasPage()),
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
