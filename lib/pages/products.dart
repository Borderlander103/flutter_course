import 'package:flutter/material.dart';

import '../product_manager.dart';
import './product_admin.dart';

class ProductsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            AppBar(
              automaticallyImplyLeading: false,
              title: Text('Choose'),
            ),
            ListTile(
              title: Text('Manage Products'),
              onTap: () {
                print('Manage Products pressed');
              },
            ),
            ListTile(
              title: Text('Product Admin'),
              onTap: () {
                print('Product Admin pressed');
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => ProductAdmin()),
                );
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('EasyList'),
      ),
      body: ProductManager(),
    );
  }
}
