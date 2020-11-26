import 'package:finaltest/presentation/country_list.dart';
import 'package:flutter/material.dart';
import 'package:finaltest/presentation/product_list.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tienda de moda'),
      ),
      body: _callPage(currentIndex),
      bottomNavigationBar: _bottomNavigationBar(),
    );
  }

  Widget _callPage(int currentPage) {
    switch (currentIndex) {
      case 0:
        return ProductList();
        break;
      case 1:
        return CountryList();
        break;
      default:
        return ProductList();
    }
  }

  Widget _bottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (index) {
        setState(() {
          currentIndex = index;
        });
      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.storage),
          label: 'Ver productos',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.map),
          label: 'Nuestras tiendas',
        ),
      ],
    );
  }
}
