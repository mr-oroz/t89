// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:typed_data';

class CompanyModel {
  final String? companyName;
  final Uint8List? image;
  CompanyModel({
    this.companyName,
    this.image,
  });

  CompanyModel copyWith({
    String? companyName,
    Uint8List? image,
  }) {
    return CompanyModel(
      companyName: companyName ?? this.companyName,
      image: image ?? this.image,
    );
  }

  @override
  String toString() => 'CompanyModel(companyName: $companyName, image: $image)';
}
