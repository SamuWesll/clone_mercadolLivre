import 'package:clone_mercado_livre/pages/busca.dart';
import 'package:clone_mercado_livre/pages/home.dart';
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
        ),
        _itemDrawer(context, Buscar(), icon: Icon(Icons.home), text: 'Home'),
        _itemDrawer(context, Buscar(), icon: Icon(Icons.search), text: 'Busca'),
        _itemDrawer(context, Buscar(),
            icon: Icon(Icons.notifications), text: 'Notificações'),
        _itemDrawer(context, Buscar(),
            icon: Icon(Icons.shopping_bag), text: 'Minhas compras'),
        Divider(color: Colors.grey),
        _itemDrawer(context, Buscar(),
            icon: Icon(Icons.store), text: 'Supermercado'),
        _itemDrawer(context, Buscar(),
            icon: Icon(Icons.dry_cleaning), text: 'Moda'),
      ],
    );
  }

  Widget _itemDrawer(context, page,
      {required Icon icon, required String text}) {
    return ListTile(
      leading: IconTheme(
        child: icon,
        data: IconThemeData(color: Colors.grey),
      ),
      title: Text(
        text,
        style: TextStyle(
          color: Colors.grey,
        ),
      ),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => page));
      },
    );
  }
}
