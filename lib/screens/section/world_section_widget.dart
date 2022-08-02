import 'package:flutter/material.dart';

import '../../models/home_data.dart';
import '../../services/api_client.dart';

class WorldSectionWidget extends StatelessWidget {
  WorldSectionWidget({Key? key}) : super(key: key);
  final ListCurrenciesRepository _listCurrenciesRepository =
      ListCurrenciesRepository();

  @override
  Widget build(BuildContext context) {
    HomeData? homeData;

    Future<dynamic> worldSection() async {
      final response = await _listCurrenciesRepository.fetchList();

      final WorldListIndex = [];
      final sectionList = [];
      final subsectionList = [];
      final titleList = [];
      final resultAbstractList = [];
      final urlList = [];
      final uriList = [];
      final bylineList = [];
      final itemTypeList = [];
      final updatedDateList = [];
      final createdDateList = [];
      final publishedDateList = [];
      final materialTypeFacetList = [];
      final kickerList = [];
      final desFacetList = [];
      final orgFacetList = [];
      final perFacetList = [];
      final geoFacetList = [];
      final multimediaList = [];
      final shortUrlList = [];

      homeData = response;
      final article = List.generate(homeData!.results!.length,
          (index) => homeData!.results![index].section);

      for (var i = 0; i < homeData!.results!.length; i++) {
        if (homeData!.results![i].section == 'world') {
          WorldListIndex.add(i);
        }
      }
      for (var i = 0; i < WorldListIndex.length; i++) {
        sectionList.add(homeData!.results![WorldListIndex[i]].section);
        subsectionList.add(homeData!.results![WorldListIndex[i]].subsection);
        titleList.add(homeData!.results![WorldListIndex[i]].title);
        resultAbstractList
            .add(homeData!.results![WorldListIndex[i]].resultAbstract);
        urlList.add(homeData!.results![WorldListIndex[i]].url);
        uriList.add(homeData!.results![WorldListIndex[i]].uri);
        bylineList.add(homeData!.results![WorldListIndex[i]].byline);
        itemTypeList.add(homeData!.results![WorldListIndex[i]].itemType);
        updatedDateList.add(homeData!.results![WorldListIndex[i]].updatedDate);
        createdDateList.add(homeData!.results![WorldListIndex[i]].createdDate);
        publishedDateList
            .add(homeData!.results![WorldListIndex[i]].publishedDate);
        materialTypeFacetList
            .add(homeData!.results![WorldListIndex[i]].materialTypeFacet);
        kickerList.add(homeData!.results![WorldListIndex[i]].kicker);
        desFacetList.add(homeData!.results![WorldListIndex[i]].desFacet);
        orgFacetList.add(homeData!.results![WorldListIndex[i]].orgFacet);
        perFacetList.add(homeData!.results![WorldListIndex[i]].perFacet);
        geoFacetList.add(homeData!.results![WorldListIndex[i]].geoFacet);
        multimediaList.add(homeData!.results![WorldListIndex[i]].multimedia);
        shortUrlList.add(homeData!.results![WorldListIndex[i]].shortUrl);
      }

      for (var i = 0; i <= sectionList.length; i++) {}
      return titleList;
    }

    return Center(
      child: FutureBuilder(
          future: worldSection(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              var data = snapshot.data!;
              return Text('$data');
            } else {
              return const CircularProgressIndicator();
            }
          }),
    );
  }
}
