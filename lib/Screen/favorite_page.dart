import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Model/universe_model.dart';
import '../Utils/colors.dart';
import '../provider/provider.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    // HomeProvider homeProviderTrue = Provider.of(context, listen: true);
    // HomeProvider homeProviderFalse = Provider.of(context, listen: false);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        title: Text(
          'Favotite',
          style: const TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.w900,
              letterSpacing: 1),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert_sharp,
                color: Colors.white,
              )),
          SizedBox(
            width: 10,
          )
        ],
      ),
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            children: [
              SizedBox(height: 100,),
              // ...List.generate(homeProviderFalse.addList.length, (index) => Container(
              //   width: double.infinity,
              //   decoration: BoxDecoration(
              //     color: Colors.black26,
              //     borderRadius: BorderRadius.circular(35),
              //   ),
              //   child: Row(
              //     children: [
              //       Container(
              //         width: 150,
              //         height: 180,
              //         padding: EdgeInsets.only(top: 30),
              //         decoration: BoxDecoration(
              //           color: Colors.white24,
              //           borderRadius: BorderRadius.circular(35),
              //         ),
              //         alignment: Alignment.center,
              //         child: Image(
              //           image: AssetImage('assets/venus.png'),
              //         ),
              //       ),
              //       Expanded(
              //         child: Padding(
              //           padding: const EdgeInsets.all(8.0),
              //           child: Column(
              //             mainAxisAlignment: MainAxisAlignment.start,
              //             crossAxisAlignment: CrossAxisAlignment.start,
              //             children: [
              //               Text(
              //                 planets[homeProviderFalse.myindex].name,
              //                 style: TextStyle(
              //                   color: Colors.white,
              //                   fontWeight: FontWeight.w600,
              //                   fontSize: 20,
              //                 ),
              //               ),
              //               Text(
              //                 planets[int.parse(homeProviderFalse.addList as String)].description,
              //                 style: TextStyle(
              //                   color: Colors.white60,
              //                   fontWeight: FontWeight.w500,
              //                   fontSize: 15,
              //                 ),
              //                 maxLines: 3,
              //                 // softWrap: true,
              //                 overflow: TextOverflow.ellipsis,
              //               ),
              //               SizedBox(height: 10,),
              //               GestureDetector(
              //                 onTap: () {
              //
              //                 },
              //                 child: Container(
              //                   width: double.infinity,
              //                   decoration: BoxDecoration(
              //                     color: Colors.white24,
              //                     borderRadius: BorderRadius.circular(35),
              //                   ),
              //                   child: Row(
              //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //                     children: [
              //                       Padding(
              //                         padding: const EdgeInsets.only(left:15.0),
              //                         child: Text('More Details',style: TextStyle(
              //                           color: Colors.white,
              //                           fontWeight: FontWeight.w500,
              //                           fontSize: 15,
              //                         ),),
              //                       ),
              //                       IconButton(onPressed: () {
              //
              //                       }, icon: Icon(Icons.arrow_forward,color: Colors.white,)),
              //                     ],
              //                   ),
              //                 ),
              //               )
              //             ],
              //           ),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),)
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(35),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 150,
                      height: 180,
                      padding: EdgeInsets.only(top: 30),
                      decoration: BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.circular(35),
                      ),
                      alignment: Alignment.center,
                      child: Image(
                        image: AssetImage('assets/venus.png'),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Mars',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              "Mars, the fourth planet from the Sun, surface.Mars, the fourth planet from the Sun, surface.Mars, the fourth planet from the Sun, surface.Mars, the fourth planet from the Sun, surface.",
                              style: TextStyle(
                                color: Colors.white60,
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                              ),
                              maxLines: 3,
                              // softWrap: true,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(height: 10,),
                            GestureDetector(
                              onTap: () {

                              },
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.white24,
                                  borderRadius: BorderRadius.circular(35),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left:15.0),
                                      child: Text('More Details',style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15,
                                      ),),
                                    ),
                                    IconButton(onPressed: () {

                                    }, icon: Icon(Icons.arrow_forward,color: Colors.white,)),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
