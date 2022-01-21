import 'package:flutter/material.dart';

class SlideTile extends StatelessWidget {
  final String? imagem;
  String? texto;
  int? id;
  SlideTile({Key? key, this.id, this.imagem, this.texto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 20, 0, 40),
      child: Column(
        children: [
          Image.asset(
            imagem!,
            width: 500,
            height: 450,
          ),
          Text(
            texto!,
            textAlign: TextAlign.center,
            style: const TextStyle(fontFamily: 'Comfortaa'),
          ),
        ],
      ),
    );
  }
}
