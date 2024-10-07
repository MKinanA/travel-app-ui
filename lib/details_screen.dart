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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.sizeOf(context).width * (1 / 20)
                  ),
                  child: LayoutBuilder(
                    builder: (context, constraints) => BigPlaceWidget(
                      place,
                      width: constraints.maxWidth,
                      aspectRatio: 4 / 3
                    )
                  )
                ),
                const SizedBox(
                  height: 16.0
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.sizeOf(context).width * (1 / 20)
                    ),
                    child: Text(
                      place.longDescription
                    )
                  ),
                )
              ]
            )
          )
        ),
      )
    );
  }
}