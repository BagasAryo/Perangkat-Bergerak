import 'package:flutter/material.dart';
import 'package:perangkat_bergerak/list_item.dart';
import 'package:perangkat_bergerak/makanan.dart';
import 'package:perangkat_bergerak/styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<Makanan> listMenu = Makanan.dummyData;
    return SafeArea(
      child: Column(children: [
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.list_alt,
              size: 30,
            ),
            Text(
              'List Kuliner',
              style: textHeader1,
            )
          ],
        ),
        SizedBox(height: 10),
        Expanded(
            child: ListView.builder(
                itemCount: listMenu.length,
                itemBuilder: (context, index) {
                  return ListItem(menu: listMenu[index]);
                }))
      ]),
    );
  }
}
