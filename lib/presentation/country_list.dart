import 'package:flutter/material.dart';
import 'package:finaltest/data/remote/countries_api.dart';
import 'package:finaltest/presentation/widgets/country_widget.dart';
import 'package:finaltest/domain/entities/country_entity.dart';

class CountryList extends StatelessWidget {
  final countryApi = new CountryListApi();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder(
        future: countryApi.getCountriesList(),
        builder: (BuildContext context,
            AsyncSnapshot<List<CountryEntity>> snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (countext, i) =>
                  CountryWidget(country: snapshot.data[i]),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(
                backgroundColor: Colors.white,
              ),
            );
          }
        },
      ),
    );
  }
}
