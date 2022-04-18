import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nimia/home_pix_page.dart';
import 'package:nimia/minhas_chaves.dart';

class ChavesCadastradasPage extends StatefulWidget {
  const ChavesCadastradasPage({Key? key}) : super(key: key);

  @override
  State<ChavesCadastradasPage> createState() => _ChavesCadastradasPageState();
}

class _ChavesCadastradasPageState extends State<ChavesCadastradasPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 30, top: 20),
                child: InkWell(
                  onTap: () => Navigator.pop(context),
                  child: const Icon(
                    Icons.arrow_back_ios,
                    color: Color.fromARGB(255, 255, 83, 79),
                    size: 20,
                  ),
                ),
              ),
              const Text(
                'Minhas Chaves',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 42),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                      'assets/key_icon.svg',
                      color: const Color.fromARGB(255, 255, 83, 79),
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 18),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Chave CPF',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                          ),
                          Text(
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: GestureDetector(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: ((context) => const HomePixPage()),
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
