// // To parse this JSON data, do
// //
// //     final seller = sellerFromJson(jsonString);
//
// import 'dart:convert';
//
// List<Seller> sellerFromJson(String str) => List<Seller>.from(json.decode(str).map((x) => Seller.fromJson(x)));
//
// String sellerToJson(List<Seller> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
//
// class Seller {
//   int? id;
//   int? sellerId;
//   String? name;
//   String? mobile01;
//   String? mobile02;
//   int? districtId;
//   int? thanaId;
//   int? postCode;
//   String? address;
//   int? areaId;
//   String? areaOther;
//   int? isActive;
//   int? createdBy;
//   DateTime? createTime;
//   int? updatedBy;
//   dynamic? updateTime;
//
//   Seller({
//     required this.id,
//     required this.sellerId,
//     required this.name,
//     required this.mobile01,
//     required this.mobile02,
//     required this.districtId,
//     required this.thanaId,
//     required this.postCode,
//     required this.address,
//     required this.areaId,
//     required this.areaOther,
//     required this.isActive,
//     required this.createdBy,
//     required this.createTime,
//     this.updatedBy,
//     this.updateTime,
//   });
//
//   factory Seller.fromJson(Map<String, dynamic> json) => Seller(
//     id: json["id"],
//     sellerId: json["seller_id"],
//     name: json["name"],
//     mobile01: json["mobile_01"],
//     mobile02: json["mobile_02"],
//     districtId: json["district_id"],
//     thanaId: json["thana_id"],
//     postCode: json["post_code"],
//     address: json["address"],
//     areaId: json["area_id"],
//     areaOther: json["area_other"],
//     isActive: json["is_active"],
//     createdBy: json["created_by"],
//     createTime: DateTime.parse(json["create_time"]),
//     updatedBy: json["updated_by"],
//     updateTime: json["update_time"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "id": id,
//     "seller_id": sellerId,
//     "name": name,
//     "mobile_01": mobile01,
//     "mobile_02": mobile02,
//     "district_id": districtId,
//     "thana_id": thanaId,
//     "post_code": postCode,
//     "address": address,
//     "area_id": areaId,
//     "area_other": areaOther,
//     "is_active": isActive,
//     "created_by": createdBy,
//     "create_time": createTime.toIso8601String(),
//     "updated_by": updatedBy,
//     "update_time": updateTime,
//   };
// }


import 'dart:ffi';

class SellerCustomer
{
  int seller_id;
  String name;
  String mobile_01;
  String mobile_02;
  int district_id;
  int thana_id;
  int post_code;
  String address;
  int area_id;
  String area_other;
  Bool is_active;

  SellerCustomer(
      this.seller_id,
      this.name,
      this.mobile_01,
      this.mobile_02,
      this.district_id,
      this.thana_id,
      this.post_code,
      this.address,
      this.area_id,
      this.area_other,
      this.is_active
  );

  Map<String, dynamic> toJson() => {
    'seller_id': seller_id.toString(),
    'name': name,
    'mobile_01': mobile_01,
    'mobile_02': mobile_02,
    'district_id': district_id.toString(),
    'thana_id': thana_id.toString(),
    'post_code': post_code,
    'address': address,
    'area_id': area_id.toString(),
    'area_other': area_other,
    'is_active': is_active.toString()
  };
}