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