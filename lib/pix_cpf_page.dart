import 'package:flutter/material.dart';
import 'package:nimia/pix_validacao_page.dart';

class PixCpfPage extends StatefulWidget {
  const PixCpfPage({Key? key}) : super(key: key);

  @override
  State<PixCpfPage> createState() => _PixCpfPageState();
}

class _PixCpfPageState extends State<PixCpfPage> {
  bool isCadastrar = true;

  @override
  Widget build(BuildContext context) {
    return isCadastrar
        ? Cadastrar(
            onAvancar: () {
              setState(() {
                isCadastrar = false;
              });
            },
          )
        : Recado(onClose: () {
            setState(() {
              isCadastrar = true;
            });
          });
  }
}

class Recado extends StatelessWidget {
  final Function()? onClose;
  const Recado({Key? key, required this.onClose}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 104, 102, 102),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 30, top: 20, left: 24),
                  child: InkWell(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(
                      Icons.arrow_back_ios,
                      color: Color.fromARGB(255, 255, 83, 79),
                      size: 20,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(
                width: double.maxFinite,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Importante',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                          GestureDetector(
                            onTap: onClose,
                            child: const Icon(
                              Icons.close,
                              color: Color.fromARGB(255, 255, 83, 79),
                            ),
                          )
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 16),
                        child: Text(
                          'Os dados abaixo ficaram visíveis para quem te enviar uma transferência.',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 24),
                        child: Text(
                          'Nome',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const Text(
                        'Godofredo de Jesus',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 16),
                        child: Text(
                          'CPF',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const Text(
                        '***.123.123-**',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 16),
                        child: Text(
                          'Instituição de cadastro de cahve',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const Text(
                        'Conta digital Nímia',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ],
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
            builder: ((context) => const ValidacaoPage()),
          ),
        ),
        child: Container(
          height: 75,
          width: double.maxFinite,
          color: const Color.fromARGB(255, 228, 228, 228),
          child: const Center(
            child: Text(
              'Entendi',
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

class Cadastrar extends StatelessWidget {
  final Function()? onAvancar;

  const Cadastrar({Key? key, required this.onAvancar}) : super(key: key);

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
              const Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: Text(
                  'Cadastrar chave',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ),
              const Text(
                'Confira os dados abaixo para cadastrar o seu CPF.',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 24),
                child: TextField(
                  decoration: InputDecoration(hintText: '349.349.349-34'),
                  keyboardType: TextInputType.number,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: GestureDetector(
        onTap: onAvancar,
        child: Container(
          height: 75,
          width: double.maxFinite,
          color: const Color.fromARGB(255, 228, 228, 228),
          child: const Center(
            child: Text(
              'Avançar',
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
