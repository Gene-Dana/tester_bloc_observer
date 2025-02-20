import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_repository/my_repository.dart';
import 'package:tester_bloc_observer/app/cubit/app_cubit.dart';
import 'package:tester_bloc_observer/l10n/l10n.dart';

class App extends StatelessWidget {
  App({required MyRepository repo, super.key}) : _repo = repo;

  final MyRepository _repo;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        useMaterial3: true,
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: RepositoryProvider(
        create: (context) => _repo,
        child: const AppProvider(),
      ),
    );
  }
}

class AppProvider extends StatelessWidget {
  const AppProvider({super.key});

  @override
  Widget build(BuildContext context) {
    final repo = context.read<MyRepository>();
    return BlocProvider(
      create: (context) => AppCubit(repo: repo),
      child: const AppView(),
    );
  }
}

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    final data = context.watch<AppCubit>().state.isValid;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(data.toString()),
            ElevatedButton(
              child: Text('update'),
              onPressed: () => context.read<AppCubit>().updateData(),
            ),
          ],
        ),
      ),
    );
  }
}
