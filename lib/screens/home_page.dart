import 'package:app_medicina/components/slide_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController(viewportFraction: 0.9);
  int _currentPage = 0;

  final List _listSlide = [
    {'id': 0, 'imagem': 'assets/images/img1.png'},
    {'id': 1, 'imagem': 'assets/images/img2.png'},
    {'id': 2, 'imagem': 'assets/images/img3.png'},
    {'id': 3, 'imagem': 'assets/images/img4.png'}
  ];
  final List _listText = [
    {
      'id': 0,
      'texto':
          'O “APLICATIVO” auxilia médicos e pacientes na hora de suas consultas, tornando tudo mais rápido e simples.'
    },
    {
      'id': 1,
      'texto':
          'Médicos se registram, atualizam seus horários de consulta e locais de trabalho, em tempo real. Podem também visualizar as informações básicas de seus pacientes e os horários marcados'
    },
    {
      'id': 2,
      'texto':
          'Os pacientes consenguem visualizar se o médico está atrasado, consegue avisar se irá atrasar, mostra os médicos em determinado local e os locais que um determinado médico se encontra'
    },
    {'id': 3, 'texto': 'Comece agora a sua experiência na nossa plataforma !'}
  ];

  @override
  void initState() {
    _pageController.addListener(() {
      int? next = _pageController.page?.round();
      if (_currentPage != next) {
        setState(() {
          _currentPage = next!;
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: _listSlide.length,
              itemBuilder: (_, currentIndex) {
                bool activePage = currentIndex == _currentPage;
                return SlideTile(
                  id: _currentPage,
                  imagem: _listSlide[currentIndex]['imagem'],
                  texto: _listText[currentIndex]['texto'],
                );
              },
            ),
          ),
          _buildBullets(),
        ],
      ),
    ));
  }

  Widget _buildBullets() {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: _listSlide.map((i) {
          return Container(
            margin: EdgeInsets.all(10),
            width: 10,
            height: 10,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: _currentPage == i['id']
                  ? Color(0xffEB5E28)
                  : Color(0xff172A3A),
            ),
          );
        }).toList(),
      ),
    );
  }
}
