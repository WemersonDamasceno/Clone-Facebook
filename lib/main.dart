import 'package:clone_login_ui/register.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Map<int, Color> color = {
      50: Color.fromRGBO(136, 14, 79, .1),
      100: Color.fromRGBO(136, 14, 79, .2),
      200: Color.fromRGBO(136, 14, 79, .3),
      300: Color.fromRGBO(136, 14, 79, .4),
      400: Color.fromRGBO(136, 14, 79, .5),
      500: Color.fromRGBO(136, 14, 79, .6),
      600: Color.fromRGBO(136, 14, 79, .7),
      700: Color.fromRGBO(136, 14, 79, .8),
      800: Color.fromRGBO(136, 14, 79, .9),
      900: Color.fromRGBO(136, 14, 79, 1),
    };

    MaterialColor corTab = MaterialColor(0xFF3b5998, color);

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Helvetica Neue",
        primarySwatch: corTab,
        textSelectionTheme:
            const TextSelectionThemeData(cursorColor: Colors.black12),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(),
        '/criar-conta': (context) => const CriarConta(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //variaveis e funcoes aqui
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: const Color(0xFFf0f2f5),
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
                  height: 400,
                  child: Column(
                    children: [
                      const Text(
                        "Entrar no Facebook",
                        style: TextStyle(
                          fontFamily: "Helvetica Neue, sans-serif",
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          color: Color(0xFF1c1e21),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      const SizedBox(
                        height: 52,
                        width: 400,
                        child: TextField(
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black26),
                            ),
                            border: OutlineInputBorder(),
                            hintText: 'Email ou telefone',
                            hintStyle: TextStyle(
                              fontSize: 18,
                              color: Colors.black26,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const SizedBox(
                        height: 52,
                        width: 400,
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black26),
                            ),
                            border: OutlineInputBorder(),
                            hintText: 'Senha',
                            hintStyle: TextStyle(
                              fontSize: 18,
                              color: Colors.black26,
                              fontFamily: "inherit",
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 50,
                        width: 400,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blue.shade700,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text(
                            "Entrar",
                            style: TextStyle(fontSize: 22),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Esqueceu a conta?",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "../assets/images/linha.png",
                            color: Colors.black26,
                            height: 10,
                            width: 160,
                          ),
                          const Text(
                            "ou",
                            style: TextStyle(color: Colors.black38),
                          ),
                          Image.asset(
                            "../assets/images/linha.png",
                            color: Colors.black26,
                            height: 10,
                            width: 160,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/criar-conta');
                          },
                          child: const Text(
                            "Criar nova conta",
                            style: TextStyle(
                                fontFamily: "inherit",
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: const Color(0xFF42b72a),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
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
      persistentFooterButtons: [
        SizedBox(
          height: 115,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: SizedBox(
              height: 10,
              child: Wrap(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Português (Brasil)"),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text("English (US)"),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text("Español"),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text("Français (France)"),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text("Deutsch"),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text("العربية"),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text("中文(简体)"),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 30,
                        color: Colors.black12,
                        child: const Icon(
                          Icons.add,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
