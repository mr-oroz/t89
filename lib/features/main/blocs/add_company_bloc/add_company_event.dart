part of 'add_company_bloc.dart';

@freezed
class AddCompanyEvent with _$AddCompanyEvent {
  const factory AddCompanyEvent.addCompany({
    required String companyName,
    required Uint8List image,
  }) = _AddCompany;
  const factory AddCompanyEvent.editCompany({
    String? companyName,
    Uint8List? image,
  }) = _EditCompany;
  const factory AddCompanyEvent.removeCompany() = _RemoveCompany;
}
