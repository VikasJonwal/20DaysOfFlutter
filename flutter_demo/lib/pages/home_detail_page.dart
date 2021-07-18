import 'package:flutter/material.dart';
import 'package:flutter_demo/models/catalog.dart';
import 'package:flutter_demo/widgets/home_widgets/addd_to_cart.dart';
import 'package:flutter_demo/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;
  const HomeDetailPage({Key? key, required this.catalog})
      : assert(catalog != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Mytheme.whitish,
      bottomNavigationBar: 
      ButtonBar(
        alignment: MainAxisAlignment.spaceBetween,
        buttonPadding: EdgeInsets.zero,
        children: [
        "\$${catalog.price}".text.bold.xl4.red800.make(),
        AddtoCart(catalog: catalog).wh(130, 50)
              ],).p32(),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(catalog.image),
            ).h32(context),
            Expanded(
                child: VxArc(
              height: 30.0,
              arcType: VxArcType.CONVEY,
              edge: VxEdge.TOP,
              child: Container(
                color: Colors.white,
                width: context.screenWidth,
                child: Column(
                  children: [
                    catalog.name.text.xl2
                        .color(Mytheme.darkBluishColor)
                        .bold
                        .make(),
                    catalog.desc.text.caption(context).lg.make(),
                    catalog.info.text.caption(context).make().p16(),
                  ],
                ).py64(),
              ),
            ))
          ],
        ).p16(),
      ),
    );
  }
}
