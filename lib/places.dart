import 'package:flutter/material.dart';

class Place {
  const Place({
    required this.name,
    required this.description,
    required this.longDescription,
    required this.image,
    this.facilities
  });
  final String name;
  final String description;
  final String longDescription;
  final String image;
  final List<PlaceFacility>? facilities;
}

class PlaceFacility {
  const PlaceFacility({
    required this.icon,
    required this.text
  });
  final IconData icon;
  final String text;
}

List<Place> places = [
  const Place(
    name: 'Travel',
    description: 'Somewhere',
    longDescription: 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Voluptatum quos nostrum atque veniam nesciunt praesentium optio?',
    image: 'bg.jpeg',
    facilities: [
      PlaceFacility(
        icon: Icons.done_all,
        text: 'Everything'
      ),
      PlaceFacility(
        icon: Icons.done_all,
        text: 'Everything'
      ),
      PlaceFacility(
        icon: Icons.done_all,
        text: 'Everything'
      ),
      PlaceFacility(
        icon: Icons.done_all,
        text: 'Everything'
      )
    ]
  ),
  const Place(
    name: 'Minecraft',
    description: 'yes why not',
    longDescription: 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Voluptatum quos nostrum atque veniam nesciunt praesentium optio?',
    image: 'minecraft.jpeg',
    facilities: [
      PlaceFacility(
        icon: Icons.games,
        text: 'Fun'
      ),
      PlaceFacility(
        icon: Icons.games,
        text: 'Fun'
      ),
      PlaceFacility(
        icon: Icons.games,
        text: 'Fun'
      ),
      PlaceFacility(
        icon: Icons.games,
        text: 'Fun'
      )
    ]
  ),
  const Place(
    name: 'Explore',
    description: 'Somewhere else',
    longDescription: 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Voluptatum quos nostrum atque veniam nesciunt praesentium optio?',
    image: 'bg.jpeg'
  )
];