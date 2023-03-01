import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:littlewords/providers/username.provider.dart';
import 'package:littlewords/routes/error/error.route.dart';
import 'package:littlewords/routes/home/home.route.dart';
import 'package:littlewords/routes/loading/loading.route.dart';
import 'package:littlewords/routes/login/login.route.dart';

class LittleWordsApp extends StatelessWidget {
  const LittleWordsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ProviderScope(
        child: MaterialApp(
      title: 'Little Words',
      home: _Routing(),
    ));
  }
}

class _Routing extends ConsumerWidget {
  const _Routing({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref
        .watch(usernameProvider)
        .when(data: _whenData, error: _whenError, loading: _whenLoading);
  }

  Widget _whenData(String? username) {
    if (null == username) {
      return LoginRoute();
    }
    return const HomeRoute();
  }

  Widget _whenError(Object error, StackTrace stackTrace) {
    return const ErrorRoute();
  }

  Widget _whenLoading() {
    return const LoadingRoute();
  }

/* La fonction au dessus est l'équivalent de
  Widget _whenLoading() => const LoadingRoute();
  */
}
