import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';

class ContactsListService {
  Future<List<Contact>> getAllContacts() async {
    Iterable<Contact> contacts = (await ContactsService.getContacts(withThumbnails: false)).toList();
    contacts.forEach((contact) {
      debugPrint("${contact.toMap()}");
    });
    return contacts;
  }
}