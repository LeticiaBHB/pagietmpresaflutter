import 'package:flutter/material.dart';

class Cliente extends StatefulWidget {
  const Cliente({super.key});

  @override
  State<Cliente> createState() => _ClienteState();
}

class _ClienteState extends State<Cliente> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Clientes'),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/fundo.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.white.withOpacity(0.8),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Image.asset(
                            'assets/cliente.jpeg',
                            width: 100,
                            height: 100,
                            alignment: Alignment.center,
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              'Nossos Clientes',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.deepOrangeAccent,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 50, 10, 50),
                    color: Colors.white.withOpacity(0.8),
                    child: ListView(
                      shrinkWrap: true,
                      children: [
                        Image.asset('assets/clientes/cliente1.jpeg'),
                        Image.asset('assets/clientes/cliente2.jpeg'),
                        Image.asset('assets/clientes/cliente3.jpeg'),
                        Image.asset('assets/clientes/cliente4.jpeg'),
                        Image.asset('assets/clientes/cliente5.jpeg'),
                        Image.asset('assets/clientes/cliente6.jpeg'),
                        Image.asset('assets/clientes/cliente7.jpeg'),
                        Image.asset('assets/clientes/cliente8.jpeg'),
                        Image.asset('assets/clientes/cliente9.jpeg'),
                        Image.asset('assets/clientes/cliente10.jpeg'),
                        Image.asset('assets/clientes/cliente11.jpeg'),
                        Image.asset('assets/clientes/cliente12.jpeg'),
                        Image.asset('assets/clientes/cliente13.jpeg'),
                        Image.asset('assets/clientes/cliente14.jpeg'),
                        Image.asset('assets/clientes/cliente15.jpeg'),
                        Image.asset('assets/clientes/cliente16.jpeg'),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
