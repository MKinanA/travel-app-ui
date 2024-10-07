import 'package:flutter/material.dart';
import 'package:travel_app/details_screen.dart';
import 'package:travel_app/places.dart';

class BigPlaceWidget extends StatelessWidget {
  final Place place;
  final double? width;
  final double? height;
  final double aspectRatio;

  static const defaultHeight = 256;

  const BigPlaceWidget(
    this.place, {
      this.width,
      this.height,
      this.aspectRatio = 3 / 4,
      super.key,
    }
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? (height ?? defaultHeight) * aspectRatio,
      height: height ?? (width == null ? defaultHeight : width! / aspectRatio).toDouble(),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0)
      ),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen(place)));
        },
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            LayoutBuilder(
              builder: (context, constraints) => Image.asset(
                'assets/${place.image}',
                height: constraints.maxHeight,
                width: constraints.maxWidth,
                fit: BoxFit.cover,
              )
            ),
            LayoutBuilder(
              builder: (context, constraints) => Container(
                width: constraints.maxWidth,
                height: constraints.maxHeight,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromRGBO(0, 0, 0, 0),
                      Color.fromRGBO(0, 0, 0, 0),
                      Color.fromRGBO(0, 0, 0, 0),
                      Color.fromRGBO(0, 0, 0, 0.75),
                      Color.fromRGBO(0, 0, 0, 0.95)
                    ]
                  )
                ),
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          place.name,
                          style: const TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                            height: 1.0,
                            fontWeight: FontWeight.w500
                          )
                        ),
                        const SizedBox(
                          height: 4.0,
                        ),
                        Text(
                          place.description,
                          style: const TextStyle(
                            fontSize: 16.0,
                            color: Colors.white,
                            height: 1.0
                          )
                        )
                      ],
                    )//,
                    // IconButton(
                    //   onPressed: () {},
                    //   icon: const Icon(
                    //     Icons.favorite_border,
                    //     color: Colors.red,
                    //     size: 32
                    //   )
                    // )
                  ]
                )
              )
            )
          ]
        ),
      )
    );
  }
}