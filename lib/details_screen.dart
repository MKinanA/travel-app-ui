import 'package:flutter/material.dart';
import 'package:travel_app/big_place_widget.dart';
import 'package:travel_app/places.dart';

class DetailsScreen extends StatelessWidget {
  final Place place;

  const DetailsScreen(
    this.place, {
      super.key
    }
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              bottom: 16.0
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.sizeOf(context).width * (1 / 20)
                  ),
                  child: LayoutBuilder(
                    builder: (context, constraints) => BigPlaceWidget(
                      place,
                      width: constraints.maxWidth,
                      aspectRatio: 4 / 3,
                      titleSize: 25.0,
                      subtitleSize: 20.0
                    )
                  )
                ),
                const SizedBox(
                  height: 16.0
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.sizeOf(context).width * (1 / 20)
                  ),
                  child: Text(
                    place.longDescription
                  )
                ),
                ...(place.facilities != null ? [
                  const SizedBox(
                    height: 32.0
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                              'Facilities',
                              style: TextStyle(
                                fontSize: 24.0,
                                fontWeight: FontWeight.w500,
                                height: 1.0
                              )
                            ),
                            Text(
                              'Learn more',
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
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: MediaQuery.sizeOf(context).width * (1 / 20)
                            ),
                            ...List.generate(
                              (place.facilities!.length * 2) - 1,
                              (index) => index % 2 == 0 ? FacilityWidget(place.facilities![index ~/ 2]) : const SizedBox(
                                width: 16.0
                              )
                            ),
                            SizedBox(
                              width: MediaQuery.sizeOf(context).width * (1 / 20)
                            )
                          ]
                        )
                      )
                    ]
                  )
                ] : [const SizedBox()])
              ]
            )
          )
        ),
      )
    );
  }
}

class FacilityWidget extends StatelessWidget {
  final PlaceFacility facility;

  const FacilityWidget(
    this.facility, {
      super.key,
    }
  );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 96.0,
      child: LayoutBuilder(
        builder: (context, constraints) => Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: constraints.maxWidth,
              height: constraints.maxWidth,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                color: const Color.fromRGBO(0, 0, 0, 0.1)
              ),
              alignment: Alignment.center,
              child: Icon(
                facility.icon,
                size: constraints.maxWidth * 2 / 3,
              )
            ),
            const SizedBox(
              height: 8.0,
            ),
            SizedBox(
              width: constraints.maxWidth,
              child: Text(
                facility.text,
                textAlign: TextAlign.center
              ),
            )
          ]
        ),
      ),
    );
  }
}