import 'package:flutter/material.dart';
import 'package:laboratorio09/app/view/task_list.dart';
import 'package:laboratorio09/app/view/info_page.dart'; // Importar la nueva página

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Image.asset(
                'assets/images/Vector.png',
                width: 141,
                height: 129,
              )
            ],
          ),
          const SizedBox(
            height: 79,
          ),
          Image.asset(
            'assets/images/onboarding-image.png',
            width: 180,
            height: 168,
          ),
          const SizedBox(
            height: 99,
          ),
          Text('Lista de tareas',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(fontSize: 18, fontWeight: FontWeight.w600)),
          const SizedBox(
            height: 21,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 32),
            child: Text(
              'La mejor forma para que no se te olvide nada es anotarlo. '
              'Guardar tus tareas y ve completando poco a poco para aumentar tu productividad',
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 30),
          // Cambiando a ElevatedButton
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const TaskListPage();
              }));
            },
            child: const Text('Ir a la lista de tareas'),
          ),
          const SizedBox(height: 20),

          // Botón para ir a InfoPage
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const InfoPage(); // Navegar a la página de información
              }));
            },
            child: const Text('Ir a Información'),
          ),
        ],
      ),
    );
  }
}
