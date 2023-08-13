import 'package:flutter/material.dart';
import 'cliente.dart';
import 'contato.dart';
import 'empresa.dart';
import 'servico.dart';

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({Key? key}) : super(key: key);

  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  void _abrirEmpresa() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Empresa()));
  }

  void _abrirServico() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Servico()));
  }

  void _abrirCliente() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Cliente()));
  }

  void _abrirContato() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Contato()));
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "SOOLENLLENA company",
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.orangeAccent,
        ),
        body: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/fundo.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                Image.asset(
                  'assets/logo.jpeg',
                  width: MediaQuery.of(context).size.width * 0.8,
                ),
                Opacity(
                  opacity: 0.8,
                  child: SizedBox(height: 20),
                ),
                Opacity(
                  opacity: 0.8,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: _abrirEmpresa,
                        child: Image.asset(
                          'assets/empresa.jpeg',
                          width: MediaQuery.of(context).size.width * 0.35,
                        ),
                      ),
                      GestureDetector(
                        onTap: _abrirServico,
                        child: Image.asset(
                          'assets/servico.jpeg',
                          width: MediaQuery.of(context).size.width * 0.35,
                        ),
                      ),
                    ],
                  ),
                ),
                Opacity(
                  opacity: 0.8,
                  child: SizedBox(height: 20),
                ),
                Opacity(
                  opacity: 0.8,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: _abrirCliente,
                        child: Image.asset(
                          'assets/cliente.jpeg',
                          width: MediaQuery.of(context).size.width * 0.35,
                        ),
                      ),
                      GestureDetector(
                        onTap: _abrirContato,
                        child: Image.asset(
                          'assets/contato.jpeg',
                          width: MediaQuery.of(context).size.width * 0.35,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
