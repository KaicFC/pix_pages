import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nimia/cadastrar_chave_page.dart';

class MinhasChaves extends StatefulWidget {
  const MinhasChaves({Key? key}) : super(key: key);

  @override
  State<MinhasChaves> createState() => _MinhasChavesState();
}

class _MinhasChavesState extends State<MinhasChaves> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 24, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: const Icon(
                    Icons.arrow_back_ios,
                    color: Color.fromARGB(255, 255, 83, 79),
                    size: 20,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: Text(
                  'Minhas Chaves',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ),
              const Text(
                'Você ainda não tem chaves cadastradas.',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 210),
                child: Center(
                  child: Column(
                    children: [
                      SvgPicture.asset(
                        'assets/key_icon.svg',
                        color: Color.fromARGB(255, 255, 83, 79),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 22),
                        child: Text(
                          'Você ainda não tem chaves cadastradas.',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: GestureDetector(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: ((context) => const CadastrarChavePage()),
          ),
        ),
        child: Container(
          height: 75,
          width: double.maxFinite,
          color: const Color.fromARGB(255, 228, 228, 228),
          child: const Center(
            child: Text(
              'Cadastrar chave',
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
