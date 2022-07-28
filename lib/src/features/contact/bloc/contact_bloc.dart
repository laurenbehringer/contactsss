import 'package:azlistview/azlistview.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:contactsss/src/features/contact/bloc/contact_event.dart';
import 'package:contactsss/src/features/contact/model/contact_model.dart';

import 'contact_state.dart';

class ContactBloc extends Bloc<ContactEvent, ContactState> {
  ContactBloc() : super(ContactStateInitial()) {
    on<ContactEventLoad>((event, emit) async {
      emit(ContactStateLoading());
      if (await FlutterContacts.requestPermission()) {
        final contacts = await FlutterContacts.getContacts(
          withProperties: true,
          withPhoto: true,
        );

        emit(ContactStateLoaded(
          contacts: contacts
              .map<ContactModel>((contact) => ContactModel(
                  //number: contact.phones.first.number.toString(),
                  contact: contact,
                  tag: contact.displayName[0].toUpperCase()))
              .toList(),
        )
            /*SuspensionUtil.sortListBySuspensionTag(contacts);
            SuspensionUtil.setShowSuspensionStatu(this.items)*/
            );
      }
    });
  }
}
