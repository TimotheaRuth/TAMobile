import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MovieList extends StatefulWidget {
  const MovieList({super.key});

  @override
  State<MovieList> createState() => _MovieListState();
}

class _MovieListState extends State<MovieList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(children: [
        SafeArea(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Hi, Gega!",
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                    Stack(
                      children: [
                        Container(
                          height: 50, width: 50, 
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            image: const DecorationImage(
                                image: image, fit: BoxFit.cover)),
                        ),
                        Positioned(
                          right: 2, top: 2,
                            child: Container(
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: kButtonColor
                              ),
                              height: 10, width: 10,
                            ))
                      ],
                    )
                    ],
                  ),
                  ),
                  const SizedBox(height: 20),
                  Padding(padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: kSearchbarColor,
                    borderRadius: BorderRadius.circular(20)
                  )
                  )
                ],
              ),
            )
        ),
        Positioned(child: Container())
      ]),
    );
  }
}
