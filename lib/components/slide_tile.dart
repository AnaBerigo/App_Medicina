import 'package:flutter/material.dart';

class SlideTile extends StatelessWidget {
  final String? imagem;
  String? texto;
  bool? botao;
  SlideTile({Key? key, this.botao, this.imagem, this.texto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(15, 35, 15, 0),
      child: Stack(
        children: [
          Column(
            children: [
              Image.asset(
                imagem!,
                width: 450,
                height: 400,
              ),
              Text(
                texto!,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 16, fontFamily: 'Comfortaa'),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: botao == true
                ? TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Vamos lá →',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Comfortaa',
                          color: Color(0xffEB5E28)),
                    ),
                  )
                : Text(' '),
          )
        ],
      ),
    );
  }
}
