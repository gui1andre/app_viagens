import 'package:flutter/material.dart';

void main() {
  runApp(Viagens());
}

class Viagens extends StatelessWidget {
  const Viagens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.indigo,
          colorScheme: ColorScheme.fromSwatch()
              .copyWith(secondary: Colors.blueAccent[700]),
          buttonTheme: ButtonThemeData(
            buttonColor: Colors.blueAccent[700],
            textTheme: ButtonTextTheme.primary,
          )),
      home: Dashboard(),
    );
  }
}

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Viagens', style: TextStyle()),
        backgroundColor: Theme.of(context).primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(8),
          ),
        ),
        leading: Icon(Icons.account_circle_sharp),
      ),
      body: Corpo(),
    );
  }
}

class Corpo extends StatefulWidget {
  const Corpo({Key? key}) : super(key: key);

  @override
  _CorpoState createState() => _CorpoState();
}

class _CorpoState extends State<Corpo> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: double.maxFinite,
              child: Container(
                height: 350,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ]),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconesServicesAereo(
                            Servicos(true, 'Aereo', Icons.airplanemode_active)),
                        IconesServicesAereo(
                            Servicos(false, 'Hotel', Icons.apartment)),
                        IconesServicesAereo(
                            Servicos(false, 'Carro', Icons.directions_car)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class IconesServicesAereo extends StatefulWidget {
  final Servicos _servico;

  IconesServicesAereo(this._servico);

  @override
  _IconesServicesAereoState createState() =>
      _IconesServicesAereoState(this._servico);
}

class _IconesServicesAereoState extends State<IconesServicesAereo> {
  final Servicos _servico;

  _IconesServicesAereoState(this._servico);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 8, 24, 0),
      child: Column(
        children: [
          Container(
            child: Column(
              children: [
                IconButton(
                  icon: Icon(_servico.icone),
                  color: _servico.ativo ? Colors.white : Colors.black,
                  iconSize: 24,
                  tooltip: _servico.nomeServico,
                  onPressed: () {
                    setState(() {
                      _servico.ativo = !_servico.ativo;
                    });
                  },
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.start,
            ),
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: _servico.ativo ? Colors.indigo : Colors.white,
              shape: BoxShape.circle,
            ),
          ),
          Text(
            _servico.nomeServico,
            style: TextStyle(
              fontWeight: _servico.ativo ? FontWeight.bold : FontWeight.normal,
              color: _servico.ativo ? Colors.indigo : Colors.black,
              fontSize: 16,
            ),
          ),
        ],
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      ),
    );
  }
}

class Servicos {
  bool ativo;
  final String nomeServico;
  final IconData icone;

  Servicos(this.ativo, this.nomeServico, this.icone);
}
