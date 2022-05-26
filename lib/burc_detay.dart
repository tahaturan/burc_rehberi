import 'package:burc_rehberi/model/burc.dart';
import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';

class BurcDetay extends StatefulWidget {
  final Burc secilenBurc;
  const BurcDetay({required this.secilenBurc, Key? key}) : super(key: key);

  @override
  State<BurcDetay> createState() => _BurcDetayState();
}

class _BurcDetayState extends State<BurcDetay> {
  Color appBarRenk = Colors.pink;

  late PaletteGenerator _generator;

  @override
  void initState() {
    super.initState();
    appBarRenginiAl();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            backgroundColor: appBarRenk,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("${widget.secilenBurc.burcAdi} Burcu Ve Ozellikleri"),
              centerTitle: true,
              background: Image.asset(
                  "images/${widget.secilenBurc.burcBuyukResim}",
                  fit: BoxFit.cover),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.all(15),
              padding: const EdgeInsets.all(10),
              child: SingleChildScrollView(
                child: Text(widget.secilenBurc.burcDetayi,
                    style: Theme.of(context).textTheme.subtitle1),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void appBarRenginiAl() async {
    _generator = await PaletteGenerator.fromImageProvider(
      AssetImage("images/${widget.secilenBurc.burcBuyukResim}"),
    );
    appBarRenk = _generator.dominantColor!.color;
    setState(() {});
  }
}
