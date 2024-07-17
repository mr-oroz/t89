import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:t89/features/main/models/company_model.dart';

part 'add_company_event.dart';
part 'add_company_bloc.freezed.dart';

@injectable
class AddCompanyBloc extends Bloc<AddCompanyEvent, CompanyModel?> {
  AddCompanyBloc() : super(null) {
    on<_AddCompany>((event, emit) {
      emit(
        CompanyModel(
          companyName: event.companyName,
          image: event.image,
        ),
      );
    });
    on<_EditCompany>((event, emit) {
      var currentState = state;
      if (currentState != null) {
        emit(
          CompanyModel(
            companyName: event.companyName ?? currentState.companyName,
            image: event.image ?? currentState.image,
          ),
        );
      }
    });
    on<_RemoveCompany>((event, emit) {
      emit(
        CompanyModel(
          companyName: '',
          image: null,
        ),
      );
    });
  }
}
