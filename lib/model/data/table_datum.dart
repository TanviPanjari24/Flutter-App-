import 'dart:convert';

class TableDatum {
  String? lotDescription;
  String? group;
  String? units;
  int? pcs;
  double? weight;
  int? rate;
  int? value;
  int? sRate;
  int? sValue;

  TableDatum({
    this.lotDescription,
    this.group,
    this.units,
    this.pcs,
    this.weight,
    this.rate,
    this.value,
    this.sRate,
    this.sValue,
  });

  factory TableDatum.fromMap(Map<String, dynamic> data) => TableDatum(
        lotDescription: data['Lot_Description'] as String?,
        group: data['Group'] as String?,
        units: data['Units'] as String?,
        pcs: data['Pcs'] as int?,
        weight: (data['Weight'] as num?)?.toDouble(),
        rate: data['Rate'] as int?,
        value: data['Value'] as int?,
        sRate: data['S_Rate'] as int?,
        sValue: data['S_Value'] as int?,
      );

  Map<String, dynamic> toMap() => {
        'Lot_Description': lotDescription,
        'Group': group,
        'Units': units,
        'Pcs': pcs,
        'Weight': weight,
        'Rate': rate,
        'Value': value,
        'S_Rate': sRate,
        'S_Value': sValue,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [TableDatum].
  factory TableDatum.fromJson(String data) {
    return TableDatum.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [TableDatum] to a JSON string.
  String toJson() => json.encode(toMap());
}
