import 'package:flutter/material.dart';
import 'package:practica3/screens/home_screen.dart';
import 'package:practica3/screens/images_screen.dart';
import 'package:practica3/screens/infinite_list.dart';
import 'package:practica3/screens/notifications.dart';
import 'package:practica3/theme/app_theme.dart';

class Inputs extends StatefulWidget {
  const Inputs({super.key});

  @override
  State<Inputs> createState() => _InputsState();
}

class _InputsState extends State<Inputs> {
  bool valueSwitch = false;
  double sliderValue = 0.0;
  int foodRadio = 0;
  bool postreCheck1 = false;
  bool postreCheck2 = false;
  bool postreCheck3 = false;
  int selectedIndex = 0; //Elemento seleccionado de la navigation bar
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Entradas',
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                entradaTexto(),
                entradaSwitch(),
                entradaSlider(),
                entradasRadio(),
                Text(
                  '¿Qué postres te gustan',
                  style: AppTheme.ligthTheme.textTheme.headlineLarge,
                ),
                entradasCheck(),
                const ElevatedButton(
                  onPressed: null,
                  child: Text(
                    'DataScreen',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        backgroundColor: Colors.white,
        onTap: (index) => openScreen(context, index),
        items: const [
          BottomNavigationBarItem(
            backgroundColor: AppTheme.primaryColor,
            icon: Icon(
              Icons.home,
              color: AppTheme.backColor,
            ),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Lista'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_active), label: 'Notificaciones'),
          BottomNavigationBarItem(icon: Icon(Icons.image), label: 'Imagenes'),
          BottomNavigationBarItem(
              icon: Icon(Icons.exit_to_app), label: 'Salir'),
        ],
      ),
    );
  }

  openScreen(BuildContext context, int index) {
    MaterialPageRoute ruta =
        MaterialPageRoute(builder: (context) => const HomeScreen());
    switch (index) {
      case 0:
        ruta = MaterialPageRoute(builder: (context) => const HomeScreen());
        break;
      case 1:
        ruta = MaterialPageRoute(builder: (context) => const InfiniteList());
        break;
      case 2:
        ruta = MaterialPageRoute(builder: (context) => const Notifications());
        break;
      case 3:
        ruta = MaterialPageRoute(builder: (context) => const ImagesScreen());
        break;
    }
    setState(() {
      selectedIndex = index;
      Navigator.push(context, ruta);
    });
  }

  TextField entradaTexto() {
    return TextField(
      style: AppTheme.ligthTheme.textTheme.headlineMedium,
      decoration: InputDecoration(
        border: const UnderlineInputBorder(),
        labelText: 'Escribe tu nombre: ',
        labelStyle: AppTheme.ligthTheme.textTheme.headlineLarge,
      ),
    );
  }

  Row entradaSwitch() {
    return Row(
      children: [
        const FlutterLogo(),
        Text(
          '¿Te gusta flutter?',
          style: AppTheme.ligthTheme.textTheme.headlineLarge,
        ),
        Switch(
            value: valueSwitch,
            onChanged: (value) {
              setState(() {
                valueSwitch = value;
              });
            })
      ],
    );
  }

  Column entradaSlider() {
    return Column(
      children: [
        Text(
          '¿Qué tanto te gusta flutter?',
          style: AppTheme.ligthTheme.textTheme.headlineLarge,
        ),
        Slider(
          min: 0.0,
          max: 10.0,
          value: sliderValue,
          divisions: 10,
          label: '${sliderValue.round()}',
          onChanged: ((value) {
            setState(() {
              sliderValue = value;
              //print('Valor del slider: $sliderValue');
            });
          }),
        )
      ],
    );
  }

  Column entradasRadio() {
    return Column(
      children: [
        Text(
          '¿Qué prefieres?',
          style: AppTheme.ligthTheme.textTheme.headlineLarge,
        ),
        ListTile(
          title: Text(
            'Tacos al pastor',
            style: AppTheme.ligthTheme.textTheme.bodySmall,
          ),
          leading: Radio(
            value: 1,
            groupValue: foodRadio,
            onChanged: (value) {
              setState(() {
                foodRadio = value!;
                //print('Comida seleccionada: $foodRadio');
              });
            },
          ),
        ),
        ListTile(
          title: Text(
            'Chileatole',
            style: AppTheme.ligthTheme.textTheme.bodySmall,
          ),
          leading: Radio(
            value: 2,
            groupValue: foodRadio,
            onChanged: (value) {
              setState(() {
                foodRadio = value!;
                //print('Comida seleccionada: $foodRadio');
              });
            },
          ),
        ),
      ],
    );
  }

  Row entradasCheck() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          'Helado de Chocoreta',
          style: AppTheme.ligthTheme.textTheme.bodySmall,
        ),
        Checkbox(
          value: postreCheck1,
          onChanged: ((value) {
            setState(() {
              postreCheck1 = value!;
            });
          }),
        ),
        Text(
          'Chocoflan',
          style: AppTheme.ligthTheme.textTheme.bodySmall,
        ),
        Checkbox(
          value: postreCheck2,
          onChanged: ((value) {
            setState(() {
              postreCheck2 = value!;
            });
          }),
        ),
        Text(
          'pay de limón',
          style: AppTheme.ligthTheme.textTheme.bodySmall,
        ),
        Checkbox(
          value: postreCheck2,
          onChanged: ((value) {
            setState(() {
              postreCheck2 = value!;
            });
          }),
        ),
      ],
    );
  }
}
