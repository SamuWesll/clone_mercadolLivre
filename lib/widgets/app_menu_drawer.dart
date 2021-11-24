import 'package:flutter/material.dart';

class AppMenuDrawer extends StatelessWidget {
  const AppMenuDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: 120.0,
          child: DrawerHeader(
              decoration: BoxDecoration(color: Color.fromRGBO(255, 241, 89, 1)),
              child: Row(
                children: [
                  Container(
                    width: 60.0,
                    height: 60.0,
                    child: CircleAvatar(
                      child: Icon(Icons.people),
                      backgroundColor: Color.fromRGBO(255, 241, 89, 1),
                      foregroundColor: Colors.grey,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        border: Border.all(
                          color: Colors.grey,
                          width: 3.0,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Olá, Samuel!',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text('Nivel avançado')
                      ],
                    ),
                  )
                ],
              )),
        )
      ],
    );
  }
}
