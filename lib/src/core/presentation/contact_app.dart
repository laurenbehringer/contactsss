import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:contactsss/src/features/contact/bloc/contact_bloc.dart';
import 'package:contactsss/src/features/contact/presentation/contact_screen.dart';

class ContactApp extends StatelessWidget {
  const ContactApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ContactBloc(),
      child: MaterialApp(
        title: 'Contacts App',
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
        ),
        home: const ContactScreen(),
      ),
    );
  }
}
