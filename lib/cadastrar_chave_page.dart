import 'package:flutter/material.dart';
import 'package:nimia/pix_cpf_page.dart';

class CadastrarChavePage extends StatefulWidget {
  const CadastrarChavePage({Key? key}) : super(key: key);

  @override
  State<CadastrarChavePage> createState() => _CadastrarChavePageState();
}

class _CadastrarChavePageState extends State<CadastrarChavePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 30, left: 24, top: 20),
              child: InkWell(
                onTap: () => Navigator.pop(context),
                child: const Icon(
                  Icons.arrow_back_ios,
                  color: Color.fromARGB(255, 255, 83, 79),
                  size: 20,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 24, bottom: 34),
              child: Text(
                'Cadastrar chave',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ),
            const CardNewPix(title: 'CPF', page: PixCpfPage()),
            const CardNewPix(title: 'Celular', page: PixCpfPage()),
            const CardNewPix(title: 'E-mail', page: PixCpfPage()),
            const CardNewPix(title: 'Aleatória', page: PixCpfPage()),
          ],
        ),
      ),
    );
  }
}

class CardNewPix extends StatelessWidget {
  final String title;
  final StatefulWidget page;
  const CardNewPix({Key? key, required this.page, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
      child: GestureDetector(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: ((context) => page),
          ),
        ),
        child: Container(
          height: 72,
          width: double.maxFinite,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: const Color.fromARGB(255, 222, 225, 230)),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: Color.fromARGB(255, 255, 83, 79),
                  size: 15,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
