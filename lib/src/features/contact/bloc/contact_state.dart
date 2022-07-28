import 'package:contactsss/src/features/contact/model/contact_model.dart';

abstract class ContactState {}

class ContactStateInitial extends ContactState {}

class ContactStateLoading extends ContactState {}

class ContactStateLoaded extends ContactState {
  ContactStateLoaded({required this.contacts});

  final List<ContactModel> contacts;
}
