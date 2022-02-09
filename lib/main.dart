import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(Viagens());
}

class Viagens extends StatelessWidget {
  Viagens({Key? key}) : super(key: key);

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
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('pt'),
      ],
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
        title: const Text('Viagens', style: TextStyle()),
        backgroundColor: Theme.of(context).primaryColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(8),
          ),
        ),
        leading: const Icon(Icons.account_circle_sharp),
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
  bool _aereo = false;
  bool _hotel = false;
  bool _veiculo = false;
  TextEditingController _dataIda = TextEditingController();
  TextEditingController _dataVolta = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            child: Column(
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
                                    const EdgeInsets.fromLTRB(24, 8, 24, 16),
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
                                            ? Colors.indigo
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
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(24, 8, 24, 16),
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
                                            ? Colors.indigo
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
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(24, 8, 24, 16),
                                child: Column(
                                  children: [
                                    Container(
                                      child: Column(
                                        children: [
                                          IconButton(
                                            icon: const Icon(
                                                Icons.directions_car),
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
                                const Padding(
                                  padding: EdgeInsets.fromLTRB(8, 16, 8, 16),
                                  child: TextField(
                                    obscureText: true,
                                    keyboardType: TextInputType.text,
                                    decoration: InputDecoration(
                                      fillColor: Colors.indigo,
                                      border: OutlineInputBorder(),
                                      labelText: 'Origem',
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.fromLTRB(8, 16, 8, 16),
                                  child: TextField(
                                    obscureText: true,
                                    keyboardType: TextInputType.text,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'Destino',
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          8, 16, 8, 16),
                                      child: Container(
                                        width: 150,
                                        child: TextField(
                                          obscureText: true,
                                          keyboardType:
                                              TextInputType.datetime,
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            labelText: 'Data Ida',
                                            suffixIcon: IconButton(
                                              icon: Icon(Icons.date_range),
                                              onPressed: () {
                                                Future<DateTime?> dataIda =
                                                    showDatePicker(
                                                        context: context,
                                                        initialDate:
                                                            DateTime.now(),
                                                        firstDate:
                                                            DateTime(2022),
                                                        lastDate:
                                                            DateTime(2099));
                                              },
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          8, 16, 8, 16),
                                      child: Container(
                                        width: 150,
                                        child: TextField(
                                          obscureText: true,
                                          keyboardType:
                                              TextInputType.datetime,
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            labelText: 'Data Volta',
                                            suffixIcon: IconButton(
                                              icon: Icon(Icons.date_range),
                                              onPressed: () async {
                                                Future<DateTime?> dataIda =
                                                    showDatePicker(
                                                        context: context,
                                                        initialDate:
                                                            DateTime.now(),
                                                        firstDate:
                                                            DateTime(2022),
                                                        lastDate:
                                                            DateTime(2099));
                                                if (dataIda != null &&
                                                    dataIda != _dataIda) {
                                                  setState(() {
                                                    debugPrint(
                                                        'chegamos aqui');
                                                    _dataIda ==
                                                        dataIda
                                                            as TextEditingController;
                                                  });
                                                }
                                              },
                                            ),
                                          ),
                                        ),
                                      ),
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
                                const Padding(
                                  padding: EdgeInsets.fromLTRB(8, 16, 8, 16),
                                  child: TextField(
                                    obscureText: true,
                                    keyboardType: TextInputType.text,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'Cidade',
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          8, 16, 8, 16),
                                      child: Container(
                                        width: 150,
                                        child: TextField(
                                          obscureText: true,
                                          keyboardType:
                                              TextInputType.datetime,
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            labelText: 'Checkin',
                                            suffixIcon: IconButton(
                                              icon: Icon(Icons.date_range),
                                              onPressed: () {
                                                Future<DateTime?> dataIda =
                                                    showDatePicker(
                                                        context: context,
                                                        initialDate:
                                                            DateTime.now(),
                                                        firstDate:
                                                            DateTime(2022),
                                                        lastDate:
                                                            DateTime(2099));
                                              },
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          8, 16, 8, 16),
                                      child: Container(
                                        width: 150,
                                        child: TextField(
                                          obscureText: true,
                                          keyboardType:
                                              TextInputType.datetime,
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            labelText: 'Checkin',
                                            suffixIcon: IconButton(
                                              icon: Icon(Icons.date_range),
                                              onPressed: () async {
                                                Future<DateTime?> dataIda =
                                                    showDatePicker(
                                                        context: context,
                                                        initialDate:
                                                            DateTime.now(),
                                                        firstDate:
                                                            DateTime(2022),
                                                        lastDate:
                                                            DateTime(2099));
                                                if (dataIda != null &&
                                                    dataIda != _dataIda) {
                                                  setState(() {
                                                    debugPrint(
                                                        'chegamos aqui');
                                                    _dataIda ==
                                                        dataIda
                                                            as TextEditingController;
                                                  });
                                                }
                                              },
                                            ),
                                          ),
                                        ),
                                      ),
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
                                const Padding(
                                  padding: EdgeInsets.fromLTRB(8, 16, 8, 16),
                                  child: TextField(
                                    obscureText: true,
                                    keyboardType: TextInputType.text,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'Local de Retirada',
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.fromLTRB(8, 16, 8, 16),
                                  child: TextField(
                                    obscureText: true,
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'Local de Devolução',
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          8, 16, 8, 16),
                                      child: Container(
                                        width: 150,
                                        child: TextField(
                                          obscureText: true,
                                          keyboardType:
                                              TextInputType.datetime,
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            labelText: 'Retirada',
                                            suffixIcon: IconButton(
                                              icon: Icon(Icons.date_range),
                                              onPressed: () {
                                                Future<DateTime?> dataIda =
                                                    showDatePicker(
                                                        context: context,
                                                        initialDate:
                                                            DateTime.now(),
                                                        firstDate:
                                                            DateTime(2022),
                                                        lastDate:
                                                            DateTime(2099));
                                              },
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          8, 16, 8, 16),
                                      child: Container(
                                        width: 150,
                                        child: TextField(
                                          obscureText: true,
                                          keyboardType:
                                              TextInputType.datetime,
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            labelText: 'Devolução',
                                            suffixIcon: IconButton(
                                              icon: Icon(Icons.date_range),
                                              onPressed: () async {
                                                Future<DateTime?> dataIda =
                                                    showDatePicker(
                                                        context: context,
                                                        initialDate:
                                                            DateTime.now(),
                                                        firstDate:
                                                            DateTime(2022),
                                                        lastDate:
                                                            DateTime(2099));
                                                if (dataIda != null &&
                                                    dataIda != _dataIda) {
                                                  setState(() {
                                                    debugPrint(
                                                        'chegamos aqui');
                                                    _dataIda ==
                                                        dataIda
                                                            as TextEditingController;
                                                  });
                                                }
                                              },
                                            ),
                                          ),
                                        ),
                                      ),
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
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 16, 8, 16),
            child: Center(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
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
                    ),UltimosPedidos(
                      pedido: 356848,
                      qtdPessoas: 1,
                      dataViagem: '08/08/2022',
                      aereo: false,
                      hotel: true,
                      veiculo: true,
                    ),UltimosPedidos(
                      pedido: 3568470,
                      qtdPessoas: 6,
                      dataViagem: '30/08/2022',
                      aereo: true,
                      hotel: true,
                      veiculo: false,
                    ),UltimosPedidos(
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
          )
        ],
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
  final veiculo;

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
      margin: EdgeInsets.all(8),
      height: 100,
      width: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      dataViagem,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '${pedido}',
                  style: TextStyle(fontSize: 16),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
                      child: Text(
                        '${qtdPessoas}',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    Icon(
                      Icons.people,
                      size: 16,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.airplanemode_active,
                      color: aereo ? Colors.blueAccent : Colors.grey,
                    ),Icon(
                      Icons.apartment,
                      color: hotel ? Colors.blueAccent : Colors.grey,
                    ),Icon(
                      Icons.directions_car,
                      color: veiculo ? Colors.blueAccent : Colors.grey,
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
