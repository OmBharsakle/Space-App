import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';
import 'package:provider/provider.dart';
import 'package:space_apps/Screen/favorite_page.dart';
import 'dart:math';
import '../Model/universe_model.dart';
import '../Utils/colors.dart';
import '../provider/provider.dart';
import 'planet_detail_page.dart';



class UniversHomePage extends StatefulWidget {
  const UniversHomePage({super.key});

  @override
  _UniversHomePageState createState() => _UniversHomePageState();
}

class _UniversHomePageState extends State<UniversHomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _rotationController;

  @override
  void initState() {
    super.initState();
    _rotationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10), // Rotation duration
    )..repeat(); // Infinite rotation
  }

  @override
  void dispose() {
    _rotationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // HomeProvider homeProviderTrue = Provider.of(context, listen: true);
    // HomeProvider homeProviderFalse = Provider.of(context, listen: false);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(
          Icons.menu,
          color: Colors.white,
        ),
        title: Text(
          'Explore Solar System',
          style: const TextStyle(
            fontSize: 22,
            color: Colors.white,
            fontWeight: FontWeight.w900,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => FavoritePage(),));
              },
              icon: Icon(
                Icons.favorite_border,
                color: Colors.white,
              )),
          SizedBox(
            width: 10,
          )
        ],
      ),
      backgroundColor: secondGradientColor,
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              firstGradientColor,
              secondGradientColor,
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 675,
                padding: const EdgeInsets.symmetric(horizontal: 0),
                child: Swiper(
                  itemCount: planets.length,
                  physics: const BouncingScrollPhysics(),
                  itemHeight: 675,
                  itemWidth: double.infinity,
                  layout: SwiperLayout.TINDER,
                  pagination: const SwiperPagination(
                      builder: DotSwiperPaginationBuilder(
                    activeSize: 12,
                    size: 8,
                    activeColor: Colors.white,
                    color: Colors.white24,
                  )),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PlanetDetailPage(
                              planetInfo: planets[index],
                            ),
                          ),
                        );
                        // homeProviderFalse.myindex=index;
                      },
                      child: Stack(
                        children: [
                          Column(
                            children: [
                              const SizedBox(height: 100),
                              Card(
                                elevation: 10,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                color: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 35,
                                    vertical: 35,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(height: 200),
                                      Text(
                                        planets[index].name,
                                        style: const TextStyle(
                                          fontSize: 50,
                                          color:
                                              Color.fromARGB(255, 71, 69, 95),
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ),
                                      Text(
                                        "Solar System",
                                        style: TextStyle(
                                          fontSize: 30,
                                          color: primaryTextColor,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      const SizedBox(height: 30),
                                      Row(
                                        children: [
                                          Text(
                                            "Know more ",
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: secondaryTextColor,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Icon(
                                            Icons.arrow_forward,
                                            color: secondaryTextColor,
                                          )
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),

                          Hero(
                            tag: planets[index].id,
                            child: AnimatedBuilder(
                              animation: _rotationController,
                              builder: (context, child) {
                                return Transform.rotate(
                                  angle: _rotationController.value * 2 * pi,
                                  child: Image.asset(planets[index].iconImage),
                                );
                              },
                            ),
                          ),


                          Positioned(
                            right: 40,
                            bottom: 120,
                            child: Text(
                              planets[index].id.toString(),
                              style: TextStyle(
                                fontSize: 260,
                                color: primaryTextColor.withOpacity(0.1),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            tileMode: TileMode.clamp,
            colors: [
              firstGradientColor,
              secondGradientColor,
            ],
          ),
        ),
        padding: const EdgeInsets.all(25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Image.asset("image/menu_icon.png"),
                ),
                const Text(
                  "Explore",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                size: 30,
                color: Colors.pink[100],
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.person_outline_outlined,
                size: 30,
                color: Colors.pink[100],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
