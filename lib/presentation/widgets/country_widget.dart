import 'package:flutter/material.dart';
import 'package:finaltest/domain/entities/country_entity.dart';

class CountryWidget extends StatelessWidget {
  final CountryEntity country;

  CountryWidget({@required this.country});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Image(
              image: NetworkImage(country.urlImage),
            ),
            title: Text('${country.name} - ${country.code}'),
            subtitle: Text('${country.indicative}'),
          ),
        ],
      ),
    );
  }
}
