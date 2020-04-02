import 'dart:convert';

AllCase allCaseFromJson(String str) => AllCase.fromJson(json.decode(str));

String allCaseToJson(AllCase data) => json.encode(data.toJson());

class AllCase {
    int cases;
    int deaths;
    int recovered;
    int updated;
    int active;
    int affectedCountries;

    AllCase({
        this.cases,
        this.deaths,
        this.recovered,
        this.updated,
        this.active,
        this.affectedCountries,
    });

    factory AllCase.fromJson(Map<String, dynamic> json) => AllCase(
        cases: json["cases"] == null ? null : json["cases"],
        deaths: json["deaths"] == null ? null : json["deaths"],
        recovered: json["recovered"] == null ? null : json["recovered"],
        updated: json["updated"] == null ? null : json["updated"],
        active: json["active"] == null ? null : json["active"],
        affectedCountries: json["affectedCountries"] == null ? null : json["affectedCountries"],
    );

    Map<String, dynamic> toJson() => {
        "cases": cases == null ? null : cases,
        "deaths": deaths == null ? null : deaths,
        "recovered": recovered == null ? null : recovered,
        "updated": updated == null ? null : updated,
        "active": active == null ? null : active,
        "affectedCountries": affectedCountries == null ? null : affectedCountries,
    };
}
