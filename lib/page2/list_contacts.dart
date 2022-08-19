import 'package:flutter/material.dart';

class ListContacts extends StatelessWidget {
   ListContacts({
    Key? key, required this.numbers,
  }) : super(key: key);
  List<String> numbers ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 65),
      child: ListView(
          children: numbers
              .map(
                (e) => ListTile(
              leading: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.black38,
                    borderRadius: BorderRadius.circular(25)),
                child: const Icon(
                  Icons.image,
                  color: Colors.green,
                ),
              ),
              title: const Text(
                'Michael Zimmer',
                style: TextStyle(fontSize: 24),
              ),
              subtitle: Text(
                e,
                style: const TextStyle(fontSize: 18),
              ),
              trailing: const Icon(Icons.phone,color: Colors.green,),
            ),
          )
              .toList()),
    );
  }
}
