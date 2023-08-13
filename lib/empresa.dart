import 'package:flutter/material.dart';

class Empresa extends StatefulWidget {
  const Empresa({super.key});

  @override
  State<Empresa> createState() => _EmpresaState();
}

class _EmpresaState extends State<Empresa> {
  @override
  Widget build(BuildContext context) {
    double imageWidth = MediaQuery.of(context).size.width * 0.4;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('empresa'),
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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Image.asset(
                          'assets/empresa.jpeg',
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
                            'Sobre a Empresa',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.deepOrangeAccent,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sed faucibus nulla. Integer volutpat elit nec nisl venenatis, eu accumsan purus condimentum. Quisque varius auctor nibh, vitae ultrices neque dignissim vel...olor sit amet, consectetur adipiscing elit. Donec sed faucibus nulla. Integer volutpat elit nec nisl venenatis, eu accumsan purus condimentum. Quisque varius auctor nibh, vitae ultrices neque dignissim vel. Maecenas cursus consectetur lorem, in pulvinar libero. Sed accumsan maximus tortor a aliquam. Praesent aliquam tristique nisi non tincidunt. Praesent aliquam mi id nulla pulvinar fringilla. Etiam sit amet faucibus justo. Vestibulum in nulla ac ipsum mattis hendrerit. Nulla quis fermentum ex. Phasellus dui neque, placerat vel convallis et, suscipit ac ante. Nunc non libero ut quam ultrices varius. Maecenas tincidunt et orci sit amet gravida. Maecenas pulvinar ex ut dui placerat, in imperdiet magna volutpat. Cras quam quam, lobortis vitae nulla vel, aliquet mollis velit. Nullam id interdum est. Donec rutrum pharetra tortor, at placerat purus venenatis et. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec molestie faucibus neque. Praesent rhoncus tincidunt lectus non lobortis. Sed eros lacus, ultricies accumsan lobortis in, fermentum in justo. Etiam sollicitudin metus aliquet neque vestibulum, non laoreet lacus porttitor.Suspendisse potenti. Nulla molestie venenatis augue. Sed vitae ante nec sem semper feugiat. Phasellus ut auctor lacus. Cras aliquet ullamcorper nibh sit amet dignissim. Etiam auctor odio sed faucibus iaculis. Integer mattis et magna elementum rutrum. Integer a. Mauris sodales, lorem et pretium laoreet, nulla enim tristique nulla, vitae dictum ex orci id quam. Maecenas ut eros fringilla, sodales risus interdum, viverra lorem. Proin ut diam mi. Cras consectetur leo congue mi gravida tincidunt. Donec non quam et leo elementum rhoncus eget sit amet magna. Praesent pretium et lacus nec tincidunt. Donec vitae gravida ligula',
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        'assets/empresa1.jpeg',
                        width: imageWidth,
                        height: imageWidth, // Mesma altura que a largura
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        'assets/empresa2.jpeg',
                        width: imageWidth,
                        height: imageWidth, // Mesma altura que a largura
                        fit: BoxFit.cover,
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
