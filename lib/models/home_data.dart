import 'dart:convert';

HomeData? homeDataFromJson(String str) => HomeData?.fromJson(json.decode(str));

class HomeData {
  HomeData({
    required this.status,
    required this.copyright,
    required this.section,
    required this.lastUpdated,
    required this.numResults,
    required this.results,
  });

  final String? status;
  final String? copyright;
  final String? section;
  final String? lastUpdated;
  final int? numResults;
  final List<Result>? results;

  factory HomeData.fromJson(Map<String, dynamic> json) => HomeData(
        status: json["status"],
        copyright: json["copyright"],
        section: json["section"],
        lastUpdated: json["last_updated"],
        numResults: json["num_results"],
        results:
            List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
      );
}

class Result {
  Result({
    required this.section,
    required this.subsection,
    required this.title,
    required this.resultAbstract,
    required this.url,
    required this.uri,
    required this.byline,
    required this.itemType,
    required this.updatedDate,
    required this.createdDate,
    required this.publishedDate,
    required this.materialTypeFacet,
    required this.kicker,
    required this.desFacet,
    required this.orgFacet,
    required this.perFacet,
    required this.geoFacet,
    required this.multimedia,
    required this.shortUrl,
  });

  final String? section;
  final String? subsection;
  final String? title;
  final String? resultAbstract;
  final String? url;
  final String? uri;
  final String? byline;
  final String? itemType;
  final String? updatedDate;
  final String? createdDate;
  final String? publishedDate;
  final String? materialTypeFacet;
  final String? kicker;
  final List<String>? desFacet;
  final List<String>? orgFacet;
  final List<String>? perFacet;
  final List<String>? geoFacet;
  final List<Multimedia>? multimedia;
  final String? shortUrl;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        section: json["section"],
        subsection: json["subsection"],
        title: json["title"],
        resultAbstract: json["abstract"],
        url: json["url"],
        uri: json["uri"],
        byline: json["byline"],
        itemType: json["item_type"],
        updatedDate: json["updated_date"],
        createdDate: json["created_date"],
        publishedDate: json["published_date"],
        materialTypeFacet: json["material_type_facet"],
        kicker: json["kicker"],
        desFacet: List<String>.from(json["des_facet"].map((x) => x)),
        orgFacet: List<String>.from(json["org_facet"].map((x) => x)),
        perFacet: List<String>.from(json["per_facet"].map((x) => x)),
        geoFacet: List<String>.from(json["geo_facet"].map((x) => x)),
        multimedia: List<Multimedia>.from(
            json["multimedia"].map((x) => Multimedia.fromJson(x))),
        shortUrl: json["short_url"],
      );
}

class Multimedia {
  Multimedia({
    required this.url,
    required this.format,
    required this.height,
    required this.width,
    required this.type,
    required this.subtype,
    required this.caption,
    required this.copyright,
  });

  final String? url;
  final String? format;
  final int? height;
  final int? width;
  final String? type;
  final String? subtype;
  final String? caption;
  final String? copyright;

  factory Multimedia.fromJson(Map<String, dynamic> json) => Multimedia(
        url: json["url"],
        format: json["format"],
        height: json["height"],
        width: json["width"],
        type: json["type"],
        subtype: json["subtype"],
        caption: json["caption"],
        copyright: json["copyright"],
      );
}
