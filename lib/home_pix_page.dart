import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nimia/minhas_chaves.dart';

class HomePixPage extends StatefulWidget {
  const HomePixPage({Key? key}) : super(key: key);

  @override
  State<HomePixPage> createState() => _HomePixPageState();
}

class _HomePixPageState extends State<HomePixPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            const Padding(
              padding: EdgeInsets.only(left: 24),
              child: Text(
                'Pix',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18, top: 28, bottom: 32),
              child: Row(
                children: const [
                  CircularCard(asset: 'assets/extrato.svg', title: 'Pagar'),
                  CircularCard(asset: 'assets/receber.svg', title: 'Receber'),
                  CircularCard(asset: 'assets/copy.svg', title: 'Copia e Cola'),
                ],
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => const MinhasChaves()),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
                child: Container(
                  height: 72,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white,
                    border: Border.all(
                        color: const Color.fromARGB(255, 222, 225, 230)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 28),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.add,
                              color: Color.fromARGB(255, 255, 83, 79),
                              size: 30,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 29),
                              child: Text(
                                'Cadastrar chaves',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
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
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
              child: GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => const MinhasChaves()),
                  ),
                ),
                child: Container(
                  height: 72,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white,
                    border: Border.all(
                        color: const Color.fromARGB(255, 222, 225, 230)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 28),
                        child: Row(
                          children: [
                            SvgPicture.asset('assets/extrato.svg'),
                            const Padding(
                              padding: EdgeInsets.only(left: 29),
                              child: Text(
                                'Extrato',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
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
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
              child: GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => const MinhasChaves()),
                  ),
                ),
                child: Container(
                  height: 72,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white,
                    border: Border.all(
                        color: const Color.fromARGB(255, 222, 225, 230)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 28),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              'assets/key_icon.svg',
                              height: 25,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 29),
                              child: Text(
                                'Minhas chaves',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
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
          ],
        ),
      ),
    );
  }
}

class CircularCard extends StatelessWidget {
  final String asset, title;
  const CircularCard({Key? key, required this.asset, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 27),
      child: Column(
        children: [
          Container(
            height: 55,
            width: 55,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              border: Border.all(
                color: const Color.fromARGB(255, 182, 184, 186),
              ),
            ),
            child: Center(
              child: SizedBox(
                height: 30,
                child: SvgPicture.asset(
                  asset,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
    );
  }
}
