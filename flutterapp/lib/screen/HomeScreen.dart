import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: ListView(
          children: <Widget>[
            Container(
              height: 600,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors:  [
                    Color(0xFF122993),
                    Color(0xFF06103E),
                  ]
                )
              ),
              child: Column(
                children: [
                  Row(
                    children: <Widget>[
                      const Padding(
                        padding: EdgeInsets.fromLTRB(100, 25, 0, 0),
                        child: Image(
                          width: 150,
                          height: 50,
                          image: AssetImage(
                              '../assets/logo1.png',
                          )
                        ),
                      ),
                      const Spacer(), // use Spacer
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 25, 10, 0),
                        child: TextButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                                side: const BorderSide(width: 2, color: Color(0xFF62D3B2)),
                              ),
                            ),
                          ),
                          onPressed: () {

                          },
                          child: const Padding(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              "Se Connecter",
                              style: TextStyle(
                                color: Color(0xFF62D3B2),
                                fontSize: 20
                              ),
                            ),
                          )
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 25, 50, 0),
                        child: TextButton(
                            style: ButtonStyle(
                              backgroundColor: const MaterialStatePropertyAll<Color>(Color(0xFF8079A8)),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ),

                              ),
                            ),
                            onPressed: () {

                            },
                            child: const Padding(
                              padding: EdgeInsets.all(8),
                              child: Text(
                                "Inscription",
                                style: TextStyle(color: Colors.white, fontSize: 20),
                              ),
                            )
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(150, 100, 0, 0),
                        child: RichText(
                          text: const TextSpan(
                            text: 'Test de \n',
                            style:  TextStyle(fontWeight: FontWeight.bold, color: Colors.white,fontSize: 50,),
                            children: <TextSpan>[
                              TextSpan(text: 'recrutement ', style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF62D3B2),fontSize: 50)),
                              TextSpan(text: 'en \nligne!', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white,fontSize: 50)),
                            ],
                          ),
                        ),
                      ),
                      const Spacer(), // use Spacer
                      const Image(
                        width: 300,
                        height: 300,
                        image: AssetImage(
                          "../assets/logo2.png"
                        )
                      )
                    ]
                  ),

                  Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(150, 0, 0, 0),
                          child: TextButton(
                              style: ButtonStyle(
                                backgroundColor: const MaterialStatePropertyAll<Color>(Color(0xFF62D3B2)),
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),

                                ),
                              ),
                              onPressed: () {

                              },
                              child: const Padding(
                                padding: EdgeInsets.all(8),
                                child: Text(
                                  "S'abonner",
                                  style: TextStyle(color: Colors.white, fontSize: 20),
                                ),
                              )
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(300, 0, 0, 0),
                          child: Image(
                              height: 200,
                              width: 450,
                              image: AssetImage(
                                  "../assets/runpeoples.png"
                              )


                          ),
                        ),
                      ]
                  )
              ]),
            ),
            Container(
              height: 250,
              color: Colors.white,
              child: const Center(child: Text('Entry B')),
            ),
            Container(
              height: 400,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      colors:  [
                        Color(0xFF122993),
                        Color(0xFF06103E),
                      ]
                  )
              ),
              child: const Center(child: Text('Entry C')),
            ),
          ],
        )
      ),
    );
  }
}
