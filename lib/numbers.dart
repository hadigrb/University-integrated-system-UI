import 'package:flutter/material.dart';

class PhoneNumbers extends StatelessWidget {
  const PhoneNumbers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFBFCFF),
      body: SafeArea(child: ContactsList()),
    );
  }
}

class ContactsList extends StatelessWidget {
  final List<Contact> contacts = [
    Contact(
        name: 'اسماعیل خوشمرام',
        phoneNumber: '09377787197',
        car: 'پراید نقره ای'),
    Contact(
        name: 'هادی قربانی', phoneNumber: '09902694065', car: 'سمند سفید'),
  ];

  ContactsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 32, top: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'شماره های تلفن',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: Theme.of(context).primaryColor),
              ),
            ],
          ),
        ),
        ListView.builder(
            shrinkWrap: true,
            itemCount: contacts.length,
            itemBuilder: (context, index) {
              final contact = contacts[index];
              return _ContactItem(contact: contact);
            }),
      ],
    );
  }
}

class _ContactItem extends StatelessWidget {
  const _ContactItem({
    super.key,
    required this.contact,
  });

  final Contact contact;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 32, right: 32, top: 10),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 80,
        decoration: BoxDecoration(
          border: Border.all(color: Theme.of(context).primaryColor),
          borderRadius: BorderRadius.circular(14),
        ),
        child: Container(
          margin: const EdgeInsets.all(4),
          width: MediaQuery.of(context).size.width,
          height: 75,
          decoration: BoxDecoration(
            color: const Color(0xffFBFCFF),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      contact.name,
                      style: const TextStyle(fontFamily: 'Vazir'),
                    ),
                    Text(contact.car,
                        style: const TextStyle(fontFamily: 'Vazir')),
                    Text(contact.phoneNumber,
                        style: const TextStyle(fontFamily: 'Vazir')),
                  ],
                ),
              ),
              InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      color: const Color(0xff70e000),
                      borderRadius: BorderRadius.circular(22.5),
                    ),
                    child: const Icon(
                      Icons.phone_outlined,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void _makePhoneCall(String phoneNumber) async {}

class Contact {
  final String name;
  final String phoneNumber;
  final String car;

  Contact({required this.name, required this.phoneNumber, required this.car});
}
