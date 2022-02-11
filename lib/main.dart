import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const Viagens());
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
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('pt'),
      ],
    );
  }
}

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key, alterarPerfil}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const Text('Dashboard', style: TextStyle()),
          backgroundColor: Theme.of(context).primaryColor,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(8),
            ),
          ),
          leading: IconAppBar()),
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
  bool _aereo = false;
  bool _hotel = false;
  bool _veiculo = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: double.maxFinite,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(
                                0, 3), // changes position of shadow
                          ),
                        ]),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(24, 16, 24, 16),
                              child: Column(
                                children: [
                                  Container(
                                    child: Column(
                                      children: [
                                        IconButton(
                                          icon: const Icon(
                                              Icons.airplanemode_active),
                                          color: _aereo
                                              ? Colors.white
                                              : Colors.black,
                                          iconSize: 24,
                                          tooltip: 'Aéreo',
                                          onPressed: () {
                                            setState(() {
                                              _aereo = !_aereo;
                                            });
                                          },
                                        ),
                                      ],
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                    ),
                                    width: 48,
                                    height: 48,
                                    decoration: BoxDecoration(
                                      color:
                                          _aereo ? Colors.indigo : Colors.white,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  Text(
                                    'Aéreo',
                                    style: TextStyle(
                                      fontWeight: _aereo
                                          ? FontWeight.bold
                                          : FontWeight.normal,
                                      color:
                                          _aereo ? Colors.indigo : Colors.black,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(24, 8, 24, 16),
                              child: Column(
                                children: [
                                  Container(
                                    child: Column(
                                      children: [
                                        IconButton(
                                          icon: const Icon(Icons.apartment),
                                          color: _hotel
                                              ? Colors.white
                                              : Colors.black,
                                          iconSize: 24,
                                          tooltip: 'Hotel',
                                          onPressed: () {
                                            setState(() {
                                              _hotel = !_hotel;
                                            });
                                          },
                                        ),
                                      ],
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                    ),
                                    width: 48,
                                    height: 48,
                                    decoration: BoxDecoration(
                                      color:
                                          _hotel ? Colors.indigo : Colors.white,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  Text(
                                    'Hotel',
                                    style: TextStyle(
                                      fontWeight: _hotel
                                          ? FontWeight.bold
                                          : FontWeight.normal,
                                      color:
                                          _hotel ? Colors.indigo : Colors.black,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(24, 8, 24, 16),
                              child: Column(
                                children: [
                                  Container(
                                    child: Column(
                                      children: [
                                        IconButton(
                                          icon:
                                              const Icon(Icons.directions_car),
                                          color: _veiculo
                                              ? Colors.white
                                              : Colors.black,
                                          iconSize: 24,
                                          tooltip: 'Veiculo',
                                          onPressed: () {
                                            setState(() {
                                              _veiculo = !_veiculo;
                                            });
                                          },
                                        ),
                                      ],
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                    ),
                                    width: 48,
                                    height: 48,
                                    decoration: BoxDecoration(
                                      color: _veiculo
                                          ? Colors.indigo
                                          : Colors.white,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  Text(
                                    'Veiculo',
                                    style: TextStyle(
                                      fontWeight: _veiculo
                                          ? FontWeight.bold
                                          : FontWeight.normal,
                                      color: _veiculo
                                          ? Colors.indigo
                                          : Colors.black,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                              ),
                            ),
                          ],
                        ),
                        Visibility(
                          visible: _aereo,
                          child: Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                                child: Align(
                                  child: Text(
                                    'Aéreo:',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Colors.indigo,
                                      fontSize: 24,
                                    ),
                                  ),
                                  alignment: Alignment.centerLeft,
                                ),
                              ),
                              const CampoTexto(
                                tipoKB: TextInputType.text,
                                nomeCampo: 'Origem',
                              ),
                              const CampoTexto(
                                tipoKB: TextInputType.text,
                                nomeCampo: 'Destino',
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  CalendarioInput(
                                    nomeCalendario: 'Data Ida',
                                  ),
                                  CalendarioInput(
                                    nomeCalendario: 'Data Volta',
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Visibility(
                          visible: _hotel,
                          child: Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                                child: Align(
                                  child: Text(
                                    'Hotel:',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Colors.indigo,
                                      fontSize: 24,
                                    ),
                                  ),
                                  alignment: Alignment.centerLeft,
                                ),
                              ),
                              const CampoTexto(
                                tipoKB: TextInputType.text,
                                nomeCampo: 'Cidade:',
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  CalendarioInput(
                                    nomeCalendario: 'Checkin',
                                  ),
                                  CalendarioInput(
                                    nomeCalendario: 'Checkout',
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Visibility(
                          visible: _veiculo,
                          child: Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                                child: Align(
                                  child: Text(
                                    'Veiculo:',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Colors.indigo,
                                      fontSize: 24,
                                    ),
                                  ),
                                  alignment: Alignment.centerLeft,
                                ),
                              ),
                              const CampoTexto(
                                tipoKB: TextInputType.text,
                                nomeCampo: 'Local Retirada',
                              ),
                              const CampoTexto(
                                tipoKB: TextInputType.text,
                                nomeCampo: 'Local Devolução',
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  CalendarioInput(
                                    nomeCalendario: 'Retirada',
                                  ),
                                  CalendarioInput(
                                    nomeCalendario: 'Devolução',
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(8, 16, 0, 16),
                child: Align(
                  child: Text(
                    'Ultimos Pedidos:',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.indigo,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  alignment: Alignment.centerLeft,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 2, 0, 16),
                child: Center(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: const [
                        UltimosPedidos(
                          pedido: 356852,
                          qtdPessoas: 4,
                          dataViagem: '20/08/2022',
                          aereo: true,
                          hotel: true,
                          veiculo: true,
                        ),
                        UltimosPedidos(
                          pedido: 356851,
                          qtdPessoas: 2,
                          dataViagem: '15/08/2022',
                          aereo: true,
                          hotel: true,
                          veiculo: false,
                        ),
                        UltimosPedidos(
                          pedido: 356849,
                          qtdPessoas: 3,
                          dataViagem: '28/08/2022',
                          aereo: true,
                          hotel: false,
                          veiculo: true,
                        ),
                        UltimosPedidos(
                          pedido: 356848,
                          qtdPessoas: 1,
                          dataViagem: '08/08/2022',
                          aereo: false,
                          hotel: true,
                          veiculo: true,
                        ),
                        UltimosPedidos(
                          pedido: 3568470,
                          qtdPessoas: 6,
                          dataViagem: '30/08/2022',
                          aereo: true,
                          hotel: true,
                          veiculo: false,
                        ),
                        UltimosPedidos(
                          pedido: 356850,
                          qtdPessoas: 1,
                          dataViagem: '20/08/2022',
                          aereo: true,
                          hotel: true,
                          veiculo: true,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(8, 16, 0, 16),
                child: Align(
                  child: Text(
                    'Meus Pedidos:',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.indigo,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  alignment: Alignment.centerLeft,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  StatusPedidos(
                    nomeStatus: 'Finalizados',
                    numPedidos: 5,
                    iconStatus: Icons.check_circle_outline,
                  ),
                  StatusPedidos(
                    nomeStatus: 'A Emitir',
                    numPedidos: 2,
                    iconStatus: Icons.lock_clock,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  StatusPedidos(
                    nomeStatus: 'Cancelados',
                    numPedidos: 10,
                    iconStatus: Icons.cancel,
                  ),
                  StatusPedidos(
                    nomeStatus: 'Remarcação',
                    numPedidos: 3,
                    iconStatus: Icons.calendar_today_outlined,
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class StatusPedidos extends StatelessWidget {
  const StatusPedidos(
      {required this.numPedidos,
      required this.nomeStatus,
      required this.iconStatus});

  final int numPedidos;
  final String nomeStatus;

  final IconData iconStatus;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 4,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ]),
      margin: const EdgeInsets.all(8),
      height: 100,
      width: 180,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              nomeStatus,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black,
                // fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Icon(
                      iconStatus,
                      size: 32,
                      color: Colors.indigoAccent,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text(
                      '$numPedidos',
                      style: const TextStyle(
                          fontSize: 18, color: Colors.indigoAccent),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class UltimosPedidos extends StatelessWidget {
  const UltimosPedidos({
    required this.dataViagem,
    required this.pedido,
    required this.qtdPessoas,
    required this.aereo,
    required this.hotel,
    required this.veiculo,
  });

  final String dataViagem;
  final int pedido;
  final int qtdPessoas;
  final bool aereo;
  final bool hotel;
  final bool veiculo;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 4,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ]),
      margin: const EdgeInsets.all(8),
      height: 100,
      width: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 16, 0, 0),
                child: Row(
                  children: [
                    Text(
                      dataViagem,
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 16, 16, 0),
                child: Text(
                  '$pedido',
                  style: const TextStyle(fontSize: 16),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
                      child: Text(
                        '$qtdPessoas',
                        style: const TextStyle(fontSize: 16),
                      ),
                    ),
                    const Icon(
                      Icons.people,
                      size: 16,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.airplanemode_active,
                      color: aereo ? Colors.indigoAccent : Colors.grey,
                    ),
                    Icon(
                      Icons.apartment,
                      color: hotel ? Colors.indigoAccent : Colors.grey,
                    ),
                    Icon(
                      Icons.directions_car,
                      color: veiculo ? Colors.indigoAccent : Colors.grey,
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class CampoTexto extends StatelessWidget {
  const CampoTexto({Key? key, required this.tipoKB, required this.nomeCampo});

  final TextInputType tipoKB;
  final String nomeCampo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 16, 8, 16),
      child: TextField(
        obscureText: true,
        keyboardType: tipoKB,
        decoration: InputDecoration(
          fillColor: Colors.indigo,
          border: const OutlineInputBorder(),
          labelText: nomeCampo,
        ),
      ),
    );
  }
}

class CalendarioInput extends StatelessWidget {
  const CalendarioInput({Key? key, required this.nomeCalendario})
      : super(key: key);

  final String nomeCalendario;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 16, 8, 16),
      child: SizedBox(
        width: 150,
        child: TextField(
          obscureText: true,
          keyboardType: TextInputType.datetime,
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            labelText: nomeCalendario,
            suffixIcon: IconButton(
              icon: const Icon(Icons.date_range),
              onPressed: () {
                Future<DateTime?> dataIda = showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2022),
                    lastDate: DateTime(2099));
              },
            ),
          ),
        ),
      ),
    );
  }
}

class IconAppBar extends StatelessWidget {
  IconAppBar({Key? key}) : super(key: key);
  bool alterarPerfil = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.account_circle_sharp,
        size: 32,
      ),
      onPressed: () {
        alterarPerfil = !alterarPerfil;
        debugPrint('${alterarPerfil}');
      },
    );
  }
}
