import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:bordered_text/bordered_text.dart';

void main() {
  runApp(const Viagens());
}

class Viagens extends StatelessWidget {
  const Viagens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: const Color.fromARGB(999, 33, 150, 243),
          colorScheme:
              ColorScheme.fromSwatch().copyWith(secondary: Colors.indigo),
          buttonTheme: ButtonThemeData(
            buttonColor: Colors.blueAccent[700],
            textTheme: ButtonTextTheme.primary,
          )),
      home: const Dashboard(),
      debugShowCheckedModeBanner: false,
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
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color.fromARGB(999, 59, 149, 254),
            Colors.indigo,
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(1),
          child: AppBar(
            backgroundColor: Theme.of(context).primaryColor,
            elevation: 0,
          ),
        ),
        body: const Corpo(),
        bottomNavigationBar: const BarraDeNavegacao(),
      ),
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
          const TituloWidget(
            tituloWidget: 'Pesquisa:',
          ),
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
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 5,
                            blurRadius: 16,
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
                                      color: _aereo
                                          ? Theme.of(context).primaryColor
                                          : Colors.white,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  Text(
                                    'Aéreo',
                                    style: TextStyle(
                                      fontWeight: _aereo
                                          ? FontWeight.bold
                                          : FontWeight.normal,
                                      color: _aereo
                                          ? Theme.of(context).primaryColor
                                          : Colors.black,
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
                                      color: _hotel
                                          ? Theme.of(context).primaryColor
                                          : Colors.white,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  Text(
                                    'Hotel',
                                    style: TextStyle(
                                      fontWeight: _hotel
                                          ? FontWeight.bold
                                          : FontWeight.normal,
                                      color: _hotel
                                          ? Theme.of(context).primaryColor
                                          : Colors.black,
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
                                          ? Theme.of(context).primaryColor
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
                                          ? Theme.of(context).primaryColor
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
                              Padding(
                                padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                                child: Align(
                                  child: Text(
                                    'Aéreo:',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Theme.of(context).primaryColor,
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
                              Padding(
                                padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                                child: Align(
                                  child: Text(
                                    'Hotel:',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Theme.of(context).primaryColor,
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
                              Padding(
                                padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                                child: Align(
                                  child: Text(
                                    'Veiculo:',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Theme.of(context).primaryColor,
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
              const TituloWidget(
                tituloWidget: 'Ultimos Pedidos:',
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 2, 0, 16),
                child: Center(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: const [
                        UltimosPedidos(
                          pedido: 356848,
                          qtdPessoas: 1,
                          dataViagem: '08/08/2022',
                          aereo: false,
                          hotel: true,
                          veiculo: true,
                          idImagem: 2,
                          nomeCidade: 'Porto Seguro, BA',
                        ),
                        UltimosPedidos(
                          pedido: 3568470,
                          qtdPessoas: 6,
                          dataViagem: '30/08/2022',
                          aereo: true,
                          hotel: true,
                          veiculo: false,
                          idImagem: 1,
                          nomeCidade: 'Curitiba, PA',
                        ),
                        UltimosPedidos(
                          pedido: 356850,
                          qtdPessoas: 1,
                          dataViagem: '20/08/2022',
                          aereo: true,
                          hotel: true,
                          veiculo: true,
                          idImagem: 3,
                          nomeCidade: 'Natal, RN',
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
              const TituloWidget(tituloWidget: 'Meus Pedidos:'),
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
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 3,
              blurRadius: 4,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ]),
      margin: const EdgeInsets.all(8),
      height: 90,
      width: 180,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
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
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text(
                      '$numPedidos',
                      style: TextStyle(
                          fontSize: 18, color: Theme.of(context).primaryColor),
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
    required this.idImagem,
    required this.nomeCidade,
  });

  final String nomeCidade;
  final String dataViagem;
  final int pedido;
  final int qtdPessoas;
  final int idImagem;
  final bool aereo;
  final bool hotel;
  final bool veiculo;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // color: Colors.white,
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          image: AssetImage(numImagem(idImagem)),
          fit: BoxFit.cover,
        ),
      ),
      margin: const EdgeInsets.all(8),
      height: 300,
      width: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                    topRight: Radius.circular(8),
                    topLeft: Radius.circular(8)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    spreadRadius: 0,
                    blurRadius: 0,
                    // changes position of shadow
                  ),
                ]),
            width: 300,
            height: 80,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BorderedText(
                        child: Text(
                          nomeCidade,
                          style: const TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        strokeWidth: 1,
                        strokeColor: Colors.black,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: BorderedText(
                              child: Text(
                                '$qtdPessoas',
                                style: const TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              strokeWidth: 1,
                              strokeColor: Colors.black,
                            ),
                          ),
                          const Icon(
                            Icons.people,
                            size: 20,
                            color: Colors.white,
                          ),
                        ],
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BorderedText(
                        child: Text(
                          dataViagem,
                          style: const TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        strokeWidth: 1,
                        strokeColor: Colors.black,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.airplanemode_active,
                            color: aereo
                                ? Colors.white
                                : Colors.grey.withOpacity(0.2),
                          ),
                          Icon(
                            Icons.apartment,
                            color: hotel
                                ? Colors.white
                                : Colors.grey.withOpacity(0.2),
                          ),
                          Icon(
                            Icons.directions_car,
                            color: veiculo
                                ? Colors.white
                                : Colors.grey.withOpacity(0.2),
                          ),
                        ],
                      )
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

String numImagem(int idImagem) {
  if (idImagem == 1) {
    return 'images/cidades/curitiba.jpg';
  } else if (idImagem == 2) {
    return 'images/cidades/natal.jpg';
  } else if (idImagem == 3) {
    return 'images/cidades/portoseguro.jpg';
  } else {
    return 'images/cidades/generic.jpg';
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
          fillColor: Theme.of(context).primaryColor,
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
      icon: const Icon(
        Icons.account_circle_sharp,
        size: 32,
      ),
      onPressed: () {
        alterarPerfil = !alterarPerfil;
        debugPrint('$alterarPerfil');
      },
    );
  }
}

class TituloWidget extends StatelessWidget {
  const TituloWidget({Key? key, required this.tituloWidget}) : super(key: key);
  final String tituloWidget;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 16, 0, 16),
      child: Align(
        child: Text(
          tituloWidget,
          textAlign: TextAlign.left,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        alignment: Alignment.centerLeft,
      ),
    );
  }
}

class BarraDeNavegacao extends StatefulWidget {
  const BarraDeNavegacao({Key? key}) : super(key: key);

  @override
  _BarraDeNavegacaoState createState() => _BarraDeNavegacaoState();
}

class _BarraDeNavegacaoState extends State<BarraDeNavegacao> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.approval),
          label: 'Aprovação',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Perfil',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Theme.of(context).primaryColor,
      onTap: _onItemTapped,
    );
  }
}
