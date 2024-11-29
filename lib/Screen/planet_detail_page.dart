import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Model/universe_model.dart';
import '../Utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cube/flutter_cube.dart';

import '../provider/provider.dart';


class PlanetDetailPage extends StatefulWidget {
  final PlanetInfo planetInfo;
  const PlanetDetailPage({super.key, required this.planetInfo});

  @override
  State<PlanetDetailPage> createState() => _PlanetDetailPageState();
}

class _PlanetDetailPageState extends State<PlanetDetailPage> {
  bool _isExpandText = false;
  void toggleExpanded() {
    setState(() {
      _isExpandText =
          !_isExpandText; // first click expand second click back to same position
    });
  }

  @override
  Widget build(BuildContext context) {
    // HomeProvider homeProviderTrue = Provider.of(context, listen: true);
    // HomeProvider homeProviderFalse = Provider.of(context, listen: false);
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(height: 30,),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 290),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              widget.planetInfo.name,
                              style: TextStyle(
                                fontSize: 60,
                                color: primaryTextColor,
                                fontWeight: FontWeight.w900,
                              ),
                            ),

                          ],
                        ),
                        Text(
                          "Solar System",
                          style: TextStyle(
                            fontSize: 35,
                            color: primaryTextColor,
                          ),
                        ),
                        const SizedBox(height: 5),
                        const Divider(color: Colors.black12),
                        const SizedBox(height: 5),
                        Text(
                          widget.planetInfo.description,
                          maxLines: _isExpandText ? null : 5,
                          overflow: _isExpandText
                              ? TextOverflow.visible
                              : TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 20,
                            color: contentTextColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        GestureDetector(
                          onTap: toggleExpanded,
                          child: Text(
                            _isExpandText ? "Read less" : "Read more",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.amber,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Divider(color: Colors.black12),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      "Gallery",
                      style: TextStyle(
                        fontSize: 25,
                        color: primaryTextColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: SizedBox(
                      height: 200,
                      child: ListView.builder(
                        itemCount: widget.planetInfo.images.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Card(
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: AspectRatio(
                              aspectRatio: 1,
                              child: Image.network(
                                widget.planetInfo.images[index],
                                fit: BoxFit.cover,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 30,
              right: -30,
              child: Hero(
                tag: widget.planetInfo.id,
                child: Image.asset(
                  widget.planetInfo.iconImage,height: 350,
                ),
              ),
            ),
            Positioned(
              child: Text(
                widget.planetInfo.id.toString(),
                style: TextStyle(
                  fontSize: 250,
                  color: primaryTextColor.withOpacity(
                    0.1,
                  ),
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: IconButton(onPressed: () {
                // homeProviderFalse.selectIndexMethod(homeProviderFalse.myindex.toString());
              }, icon: Icon(Icons.favorite_border,size: 30,)),
            )
            // IconButton(
            //   onPressed: () {
            //     Navigator.pop(context);
            //   },
            //   icon: const Icon(
            //     Icons.arrow_back_ios,
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
