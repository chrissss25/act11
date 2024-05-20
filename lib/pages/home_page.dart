import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:herediaA11/util/my_button.dart';
import 'package:herediaA11/util/my_card.dart';
import 'package:herediaA11/util/my_list_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      floatingActionButton: Padding(
        // Alineación derecha con espacio
        padding: const EdgeInsets.only(right: 10.0),
        child: FloatingActionButton(
          onPressed: () {
            // Acción al presionar el botón
          },
          backgroundColor: Color(0xff000000),
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(30), // Establece el radio del borde aquí
          ),
          child: Icon(
            Icons.apple,
            size: 32,
            color: Color(0xffffffff),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.home,
                  size: 32,
                  color: Color(0xff000000),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.settings,
                  size: 32,
                  color: Color(0xff797979),
                ),
              )
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          // Agregado SingleChildScrollView
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    Text(
                      "Mas",
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      " productos",
                      style: TextStyle(fontSize: 28),
                    ),
                    SizedBox(width: 40),
                    Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Color(0xffd5d5d5),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.add),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25),
              SizedBox(
                height: 180,
                child: PageView(
                  scrollDirection: Axis.horizontal,
                  controller: _controller,
                  children: [
                    MyCard(
                      iconImagePath: "lib/icons/card1.png",
                      index: 0,
                    ),
                    MyCard(
                      iconImagePath: "lib/icons/card2.png",
                      index: 1,
                    ),
                    MyCard(
                      iconImagePath: "lib/icons/card3.png",
                      index: 2,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect: ExpandingDotsEffect(
                    activeDotColor: Color(0xff000000),
                  ),
                ),
              ),
              SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MyButton(
                      iconImagePath: "lib/icons/iphone.png",
                      buttonText: "iPhone",
                    ),
                    MyButton(
                      iconImagePath: "lib/icons/ipad.png",
                      buttonText: "iPad",
                    ),
                    MyButton(
                      iconImagePath: "lib/icons/reloj-de-pulsera.png",
                      buttonText: "Watch",
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  children: [
                    MyListTile(
                      iconImagePath: "lib/icons/50-por-ciento.png",
                      titleTitle: "Ofertas",
                      titleSubTitle: "Los mejores precios",
                    ),
                    MyListTile(
                      iconImagePath: "lib/icons/etiqueta.png",
                      titleTitle: "Lo nuevo",
                      titleSubTitle: "Las nuevas versiones",
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
