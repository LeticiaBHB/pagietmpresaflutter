import 'package:flutter/material.dart';

class Servico extends StatefulWidget {
  const Servico({Key? key}) : super(key: key);

  @override
  State<Servico> createState() => _ServicoState();
}

class _ServicoState extends State<Servico> {
  @override
  Widget build(BuildContext context) {
    double imageWidth = MediaQuery.of(context).size.width * 0.5;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Serviços'),
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
              color: Colors.white.withOpacity(0.8),
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(16),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/servico1.jpeg',
                                width: imageWidth,
                                height: imageWidth,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(height: 16),
                              Image.asset(
                                'assets/servico2.jpeg',
                                width: imageWidth,
                                height: imageWidth,
                                fit: BoxFit.cover,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 16),
                        Expanded(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text(
                                'Sobre os Serviços',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.deepOrangeAccent,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(height: 16),
                              ListTile(
                                title: Text(
                                  'Consectetur Fiad',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                subtitle: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Text(
                                      'Serviço 1: Donec interdum est et nulla malesuada, id commodo enim sagittis.',
                                    ),
                                    Text(
                                      'Serviço 2: Sed ut massa ut mi efficitur eleifend.',
                                    ),
                                    Text(
                                      'Serviço 3: Ut eget nunc at eros mattis egestas.',
                                    ),
                                    Text(
                                      'Serviço 4: Morbi vitae mi id tortor tristique commodo at vel ed.',
                                    ),
                                  ],
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  'Nec Venenatis',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                subtitle: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Text(
                                      'Serviço 1: Nam nec nunc ornare, commodo ante quis, lacinia dolor.',
                                    ),
                                    Text(
                                      'Serviço 2: Donec eu nibh sit amet justo cursus laoreet vestibulum eu turpis.',
                                    ),
                                    Text(
                                      'Serviço 3: Aenean eu risus sed sem vehicula tristique.',
                                    ),
                                    Text(
                                      'Serviço 4: Cras vel dui eu augue scelerisque varius.',
                                    ),
                                  ],
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  'Vehicula trisrd',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                subtitle: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Text(
                                      'Serviço 1: Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                                    ),
                                    Text(
                                      'Serviço 2: Sed egestas dui sed consectetur finibus.',
                                    ),
                                    Text(
                                      'Serviço 3: Vestibulum facilisis mauris at vestibulum malesuada.',
                                    ),
                                    Text(
                                      'Serviço 4: Fusce blandit lorem non tortor placerat, eget gravida massa sodales.',
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "Fone do setor de serviços: ++0(1495) 805 987238 5243 89924 49",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          'Fornecedores de toda região com as melhores soluções',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
