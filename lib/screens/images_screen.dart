import 'package:flutter/material.dart';
import 'package:practica3/theme/app_theme.dart';

class ImagesScreen extends StatefulWidget {
  const ImagesScreen({super.key});

  @override
  State<ImagesScreen> createState() => _ImagesScreenState();
}

class _ImagesScreenState extends State<ImagesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Imágenes',
          style: AppTheme.ligthTheme.textTheme.headlineLarge,
        ),
      ),
      body: ListView(
        children: [imageCard(), imageWeb()],
      ),
    );
  }

  Card imageCard() {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      margin: const EdgeInsets.all(28),
      elevation: 10,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: const Image(
              image: AssetImage('assets/img/patricio.png'),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Patricio Molesto',
              style: TextStyle(
                  color: Color.fromARGB(255, 129, 19, 19),
                  fontSize: 26,
                  fontWeight: FontWeight.w400),
            ),
          )
        ],
      ),
    );
  }

  Widget imageWeb() {
    return Center(
      child: Image.network(
          'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/fa3b628f-d10c-4222-b9b0-50756602dab7/df1q5ps-51de50a2-4ff4-4c2a-953f-1442d404610f.png/v1/fill/w_461,h_541,strp/bob_esponja_enojado_by_redbird2935_df1q5ps-fullview.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9NTQxIiwicGF0aCI6IlwvZlwvZmEzYjYyOGYtZDEwYy00MjIyLWI5YjAtNTA3NTY2MDJkYWI3XC9kZjFxNXBzLTUxZGU1MGEyLTRmZjQtNGMyYS05NTNmLTE0NDJkNDA0NjEwZi5wbmciLCJ3aWR0aCI6Ijw9NDYxIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmltYWdlLm9wZXJhdGlvbnMiXX0.OTEwAbv7SPWZg7VguCa6MraxArewVeuQB4f1ZEhSnHk'),
    );
  }
}
