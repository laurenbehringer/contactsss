import 'package:azlistview/azlistview.dart';
import 'package:flutter_contacts/contact.dart';

class ContactModel extends ISuspensionBean {
  ContactModel({required this.contact, required this.tag});

  final Contact contact;
  final String tag;
  //final String number;

  @override
  String getSuspensionTag() {
    return tag /*contact.displayName*/;
  }
}
