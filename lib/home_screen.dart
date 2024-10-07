import 'package:flutter/material.dart';
import 'package:travel_app/big_place_widget.dart';
import 'package:travel_app/details_screen.dart';
import 'package:travel_app/places.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: MediaQuery.sizeOf(context).height * (1 / 8),
        title: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.sizeOf(context).width * (1 / 20),
            vertical: 8.0
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Explore',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500
                    )
                  ),
                  Text(
                    'Travel',
                    style: TextStyle(
                      fontSize: 32.0,
                      fontWeight: FontWeight.w500
                    )
                  )
                ]
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(0, 0, 0, 0.05),
                  borderRadius: BorderRadius.circular(16.0)
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Color.fromRGBO(0, 0, 255, 1),
                      size: 20.0
                    ),
                    SizedBox(
                      width: 4.0
                    ),
                    Text(
                      'Indonesia',
                      style: TextStyle(
                        height: 1.0,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500
                      )
                    ),
                    SizedBox(
                      width: 4.0
                    ),
                    Icon(
                      Icons.arrow_drop_down,
                      size: 24.0
                    )
                  ]
                )
              )
            ]
          ),
        ),
        titleSpacing: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 16.0
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: MediaQuery.sizeOf(context).width * (1 / 20)
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 4.0,
                    vertical: 2.0
                  ),
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(0, 0, 0, 0.05),
                    borderRadius: BorderRadius.circular(16.0)
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.search,
                        size: 20.0
                      ),
                      hintText: 'Search'
                    ),
                    style: TextStyle(
                      height: 1.8
                    )
                  ),
                ),
                const SizedBox(
                  height: 32.0
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width * (1 / 20)
                      ),
                      Container(
                        padding: const EdgeInsets.all(12.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.0),
                          color: const Color.fromRGBO(0, 0, 255, 0.1),
                          border: Border.all(
                            color: const Color.fromRGBO(0, 0, 255, 0.5),
                            width: 2.0
                          )
                        ),
                        child: const Text(
                          'Location',
                          style: TextStyle(
                            height: 1.0,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(0, 0, 255, 1)
                          )
                        )
                      ),
                      const SizedBox(
                        width: 16.0
                      ),
                      Container(
                        padding: const EdgeInsets.all(12.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.0),
                          color: const Color.fromRGBO(0, 0, 0, 0.05)
                        ),
                        child: const Text(
                          'Hotels',
                          style: TextStyle(
                            height: 1.0,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(0, 0, 0, 3 / 4)
                          )
                        )
                      ),
                      const SizedBox(
                        width: 16.0
                      ),
                      Container(
                        padding: const EdgeInsets.all(12.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.0),
                          color: const Color.fromRGBO(0, 0, 0, 0.05)
                        ),
                        child: const Text(
                          'Food',
                          style: TextStyle(
                            height: 1.0,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(0, 0, 0, 3 / 4)
                          )
                        )
                      ),
                      const SizedBox(
                        width: 16.0
                      ),
                      Container(
                        padding: const EdgeInsets.all(12.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.0),
                          color: const Color.fromRGBO(0, 0, 0, 0.05)
                        ),
                        child: const Text(
                          'Adventure',
                          style: TextStyle(
                            height: 1.0,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(0, 0, 0, 3 / 4)
                          )
                        )
                      ),
                      const SizedBox(
                        width: 16.0
                      ),
                      Container(
                        padding: const EdgeInsets.all(12.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.0),
                          color: const Color.fromRGBO(0, 0, 0, 0.05)
                        ),
                        child: const Text(
                          'Thing',
                          style: TextStyle(
                            height: 1.0,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(0, 0, 0, 3 / 4)
                          )
                        )
                      ),
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width * (1 / 20)
                      )
                    ]
                  ),
                ),
                const SizedBox(
                  height: 32.0
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.sizeOf(context).width * (1 / 20)
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Popular',
                            style: TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.w500,
                              height: 1.0
                            )
                          ),
                          Text(
                            'See all',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(0, 0, 255, 1),
                              height: 1.0
                            )
                          )
                        ]
                      )
                    ),
                    const SizedBox(
                      height: 16.0
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.sizeOf(context).width * (1 / 20)
                          ),
                          ...List.generate(
                            (places.length * 2) - 1,
                            (index) => index % 2 == 0 ? BigPlaceWidget(places[index ~/ 2]) : const SizedBox(
                              width: 16.0
                            )
                          ),
                          SizedBox(
                            width: MediaQuery.sizeOf(context).width * (1 / 20)
                          ),
                        ]
                      ),
                    )
                  ]
                ),
                const SizedBox(
                  height: 32.0
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.sizeOf(context).width * (1 / 20)
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Recommended',
                            style: TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.w500,
                              height: 1.0
                            )
                          ),
                          Text(
                            'See all',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(0, 0, 255, 1),
                              height: 1.0
                            )
                          )
                        ]
                      )
                    ),
                    const SizedBox(
                      height: 16.0
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.sizeOf(context).width * (1 / 20)
                          ),
                          ...List.generate(
                            (places.length * 2) - 1,
                            (index) => index % 2 == 0 ? BigPlaceWidget(places[index ~/ 2]) : const SizedBox(
                              width: 16.0
                            )
                          ),
                          SizedBox(
                            width: MediaQuery.sizeOf(context).width * (1 / 20)
                          ),
                        ]
                      ),
                    )
                  ]
                ),
                const SizedBox(
                  height: 64.0
                )
              ]
            ),
          )
        )
      )
    );
  }
}
