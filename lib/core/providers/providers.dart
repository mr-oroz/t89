import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:t89/core/di/injector.dart';
import 'package:t89/features/main/blocs/blocs.dart';

class Providers extends StatelessWidget {
  const Providers({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AddCompanyBloc>(
          create: (context) => getIt<AddCompanyBloc>(),
        ),
        BlocProvider<AddProductBloc>(
          create: (context) => getIt<AddProductBloc>(),
        ),
      ],
      child: child,
    );
  }
}
