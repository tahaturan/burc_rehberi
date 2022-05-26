import 'package:burc_rehberi/model/burc.dart';
import 'package:flutter/material.dart';

class BurcItem extends StatelessWidget {
  final Burc listelenenBurc;
  const BurcItem({required this.listelenenBurc, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        elevation: 6,
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        color: Colors.cyan[200],
        shadowColor: Colors.blue,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: CircleAvatar(
              child: Image.asset("images/${listelenenBurc.burcKucukResim}"),
            ),
            title: Text(
              listelenenBurc.burcAdi,
              style: myTextStyle.headline5,
            ),
            subtitle: Text(
              listelenenBurc.burcTarihi,
              style: myTextStyle.subtitle1,
            ),
            trailing: const CircleAvatar(
              child: Icon(Icons.arrow_forward_sharp),
            ),
            onTap: () {
              Navigator.pushNamed(context, "/burcDetay",
                  arguments: listelenenBurc);
            },
          ),
        ),
      ),
    );
  }
}
