import 'package:burc_rehberi/model/burc.dart';
import 'package:flutter/material.dart';

class BurcDetay extends StatelessWidget {
  final Burc secilenBurc;
  const BurcDetay({required this.secilenBurc, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            backgroundColor: Colors.pink,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("${secilenBurc.burcAdi} Burcu Ve Ozellikleri"),
              centerTitle: true,
              background: Image.asset("images/${secilenBurc.burcBuyukResim}",
                  fit: BoxFit.cover),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.all(15),
              padding: const EdgeInsets.all(10),
              child: SingleChildScrollView(
                child: Text(secilenBurc.burcDetayi,
                    style: Theme.of(context).textTheme.subtitle1),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
