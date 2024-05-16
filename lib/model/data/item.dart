import 'dart:convert';

import 'table_datum.dart';

class Item {
  String? barcode;
  String? location;
  String? branch;
  String? status;
  int? counter;
  String? source;
  String? category;
  String? collection;
  String? description;
  String? metalGrp;
  String? stkSection;
  String? mfgdBy;
  String? notes;
  String? inStkSince;
  String? certNo;
  String? huidNo;
  int? orderNo;
  String? cusName;
  String? size;
  String? quality;
  double? kt;
  int? pcs;
  double? grossWt;
  double? netWt;
  int? diaPcs;
  double? diaWt;
  int? clsPcs;
  int? clsWt;
  int? chainWt;
  int? mRate;
  int? mValue;
  int? lRate;
  int? lCharges;
  int? rCharges;
  int? oCharges;
  double? mrp;
  String? imageLink;
  List<TableDatum>? tableData;

  Item({
    this.barcode,
    this.location,
    this.branch,
    this.status,
    this.counter,
    this.source,
    this.category,
    this.collection,
    this.description,
    this.metalGrp,
    this.stkSection,
    this.mfgdBy,
    this.notes,
    this.inStkSince,
    this.certNo,
    this.huidNo,
    this.orderNo,
    this.cusName,
    this.size,
    this.quality,
    this.kt,
    this.pcs,
    this.grossWt,
    this.netWt,
    this.diaPcs,
    this.diaWt,
    this.clsPcs,
    this.clsWt,
    this.chainWt,
    this.mRate,
    this.mValue,
    this.lRate,
    this.lCharges,
    this.rCharges,
    this.oCharges,
    this.mrp,
    this.imageLink,
    this.tableData,
  });

  factory Item.fromMap(Map<String, dynamic> data) => Item(
        barcode: data['Barcode'] as String?,
        location: data['Location'] as String?,
        branch: data['Branch'] as String?,
        status: data['Status'] as String?,
        counter: data['Counter'] as int?,
        source: data['Source'] as String?,
        category: data['Category'] as String?,
        collection: data['Collection'] as String?,
        description: data['Description'] as String?,
        metalGrp: data['Metal_Grp'] as String?,
        stkSection: data['STK_Section'] as String?,
        mfgdBy: data['Mfgd_By'] as String?,
        notes: data['Notes'] as String?,
        inStkSince: data['In_STK_Since'] as String?,
        certNo: data['Cert_No'] as String?,
        huidNo: data['HUID_No'] as String?,
        orderNo: data['Order_No'] as int?,
        cusName: data['Cus_Name'] as String?,
        size: data['Size'] as String?,
        quality: data['Quality'] as String?,
        kt: (data['KT'] as num?)?.toDouble(),
        pcs: data['Pcs'] as int?,
        grossWt: (data['Gross_Wt'] as num?)?.toDouble(),
        netWt: (data['Net_Wt'] as num?)?.toDouble(),
        diaPcs: data['Dia_Pcs'] as int?,
        diaWt: (data['Dia_Wt'] as num?)?.toDouble(),
        clsPcs: data['Cls_Pcs'] as int?,
        clsWt: data['Cls_Wt'] as int?,
        chainWt: data['Chain_Wt'] as int?,
        mRate: data['M_Rate'] as int?,
        mValue: data['M_Value'] as int?,
        lRate: data['L_Rate'] as int?,
        lCharges: data['L_Charges'] as int?,
        rCharges: data['R_Charges'] as int?,
        oCharges: data['O_Charges'] as int?,
        mrp: (data['MRP'] as num?)?.toDouble(),
        imageLink: data['image_link'] as String?,
        tableData: (data['Table_Data'] as List<dynamic>?)
            ?.map((e) => TableDatum.fromMap(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toMap() => {
        'Barcode': barcode,
        'Location': location,
        'Branch': branch,
        'Status': status,
        'Counter': counter,
        'Source': source,
        'Category': category,
        'Collection': collection,
        'Description': description,
        'Metal_Grp': metalGrp,
        'STK_Section': stkSection,
        'Mfgd_By': mfgdBy,
        'Notes': notes,
        'In_STK_Since': inStkSince,
        'Cert_No': certNo,
        'HUID_No': huidNo,
        'Order_No': orderNo,
        'Cus_Name': cusName,
        'Size': size,
        'Quality': quality,
        'KT': kt,
        'Pcs': pcs,
        'Gross_Wt': grossWt,
        'Net_Wt': netWt,
        'Dia_Pcs': diaPcs,
        'Dia_Wt': diaWt,
        'Cls_Pcs': clsPcs,
        'Cls_Wt': clsWt,
        'Chain_Wt': chainWt,
        'M_Rate': mRate,
        'M_Value': mValue,
        'L_Rate': lRate,
        'L_Charges': lCharges,
        'R_Charges': rCharges,
        'O_Charges': oCharges,
        'MRP': mrp,
        'image_link': imageLink,
        'Table_Data': tableData?.map((e) => e.toMap()).toList(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Item].
  factory Item.fromJson(String data) {
    return Item.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Item] to a JSON string.
  String toJson() => json.encode(toMap());
}
