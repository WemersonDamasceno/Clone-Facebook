import 'package:flutter/material.dart';

class CriarConta extends StatefulWidget {
  const CriarConta({Key? key}) : super(key: key);

  @override
  _CriarContaState createState() => _CriarContaState();
}

class _CriarContaState extends State<CriarConta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf0f2f5),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "../assets/images/logo.png",
              color: Colors.blue.shade700,
              width: 270,
            ),
            const SizedBox(
              height: 10,
            ),
            Card(
              color: Colors.white,
              shadowColor: Colors.black,
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: SizedBox(
                  width: 400,
                  height: 500,
                  child: Column(
                    children: [
                      const Text(
                        "Criar uma nova conta",
                        style: TextStyle(
                          fontFamily: "inherit",
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Color(0xFF1c1e21),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "É rápido e fácil.",
                        style: TextStyle(
                          fontFamily: "inherit",
                          fontSize: 18,
                          color: Colors.black38,
                        ),
                      ),
                      Row(
                        children: const [],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
