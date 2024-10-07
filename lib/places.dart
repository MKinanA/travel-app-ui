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
    longDescription: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tempora ut consequuntur, sit ad assumenda blanditiis reprehenderit deserunt odit placeat natus excepturi? Odit, eum! Nesciunt nemo velit omnis fugit neque eveniet hic quidem repellendus. Omnis nisi, ducimus fugit consequuntur voluptatem dolor perferendis dolore aspernatur porro et, corrupti nesciunt qui veritatis iste, ullam velit quo possimus enim quos saepe expedita quisquam hic doloribus delectus! Velit cumque praesentium fugiat, et aut, minima dignissimos eligendi doloremque perferendis cupiditate rerum sit, cum distinctio officia! Fugit expedita nisi adipisci aliquam sunt repudiandae, laudantium unde earum architecto, porro consequatur tempora. Eveniet inventore aliquam autem iste quidem iure vel praesentium nesciunt aliquid. Dignissimos consequatur temporibus dolorum ea corrupti eligendi! Laborum accusamus cupiditate necessitatibus quia placeat tempore ratione eos, animi temporibus ipsa, officia nisi aperiam exercitationem distinctio et ducimus tenetur nemo eum porro excepturi ipsam omnis. Nam sit aut quo culpa est cum aliquam error quod molestias eligendi quis distinctio qui saepe atque accusantium, tempore rem rerum possimus? Cum error labore consequatur quisquam, laborum tempora officiis tempore iure vero alias nihil quibusdam voluptas earum. Et, veniam quibusdam reprehenderit nam earum doloribus aliquid natus inventore officiis ratione at delectus quia fugit? Illo voluptate fugiat, esse eius sed necessitatibus possimus commodi ratione nulla distinctio, alias ea praesentium dolores ab eaque iusto incidunt quasi ad tempore. Necessitatibus earum quibusdam non nemo ipsam voluptates totam est deserunt vero quia, qui neque sunt eius quo sed! Quae unde odio mollitia, maiores ex voluptatum beatae ullam porro hic. Eos rerum alias illo dolorem reiciendis, ea praesentium voluptas ducimus accusantium voluptatibus eveniet.',
    image: 'bg.jpeg',
    facilities: [
      PlaceFacility(
        icon: Icons.done_all,
        text: 'Everything'
      )
    ]
  ),
  const Place(
    name: 'Minecraft',
    description: 'yes why not',
    longDescription: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tempora ut consequuntur, sit ad assumenda blanditiis reprehenderit deserunt odit placeat natus excepturi? Odit, eum! Nesciunt nemo velit omnis fugit neque eveniet hic quidem repellendus. Omnis nisi, ducimus fugit consequuntur voluptatem dolor perferendis dolore aspernatur porro et, corrupti nesciunt qui veritatis iste, ullam velit quo possimus enim quos saepe expedita quisquam hic doloribus delectus! Velit cumque praesentium fugiat, et aut, minima dignissimos eligendi doloremque perferendis cupiditate rerum sit, cum distinctio officia! Fugit expedita nisi adipisci aliquam sunt repudiandae, laudantium unde earum architecto, porro consequatur tempora. Eveniet inventore aliquam autem iste quidem iure vel praesentium nesciunt aliquid. Dignissimos consequatur temporibus dolorum ea corrupti eligendi! Laborum accusamus cupiditate necessitatibus quia placeat tempore ratione eos, animi temporibus ipsa, officia nisi aperiam exercitationem distinctio et ducimus tenetur nemo eum porro excepturi ipsam omnis. Nam sit aut quo culpa est cum aliquam error quod molestias eligendi quis distinctio qui saepe atque accusantium, tempore rem rerum possimus? Cum error labore consequatur quisquam, laborum tempora officiis tempore iure vero alias nihil quibusdam voluptas earum. Et, veniam quibusdam reprehenderit nam earum doloribus aliquid natus inventore officiis ratione at delectus quia fugit? Illo voluptate fugiat, esse eius sed necessitatibus possimus commodi ratione nulla distinctio, alias ea praesentium dolores ab eaque iusto incidunt quasi ad tempore. Necessitatibus earum quibusdam non nemo ipsam voluptates totam est deserunt vero quia, qui neque sunt eius quo sed! Quae unde odio mollitia, maiores ex voluptatum beatae ullam porro hic. Eos rerum alias illo dolorem reiciendis, ea praesentium voluptas ducimus accusantium voluptatibus eveniet.',
    image: 'minecraft.jpeg',
    facilities: [
      PlaceFacility(
        icon: Icons.games,
        text: 'Fun'
      )
    ]
  ),
  const Place(
    name: 'Explore',
    description: 'Somewhere else',
    longDescription: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tempora ut consequuntur, sit ad assumenda blanditiis reprehenderit deserunt odit placeat natus excepturi? Odit, eum! Nesciunt nemo velit omnis fugit neque eveniet hic quidem repellendus. Omnis nisi, ducimus fugit consequuntur voluptatem dolor perferendis dolore aspernatur porro et, corrupti nesciunt qui veritatis iste, ullam velit quo possimus enim quos saepe expedita quisquam hic doloribus delectus! Velit cumque praesentium fugiat, et aut, minima dignissimos eligendi doloremque perferendis cupiditate rerum sit, cum distinctio officia! Fugit expedita nisi adipisci aliquam sunt repudiandae, laudantium unde earum architecto, porro consequatur tempora. Eveniet inventore aliquam autem iste quidem iure vel praesentium nesciunt aliquid. Dignissimos consequatur temporibus dolorum ea corrupti eligendi! Laborum accusamus cupiditate necessitatibus quia placeat tempore ratione eos, animi temporibus ipsa, officia nisi aperiam exercitationem distinctio et ducimus tenetur nemo eum porro excepturi ipsam omnis. Nam sit aut quo culpa est cum aliquam error quod molestias eligendi quis distinctio qui saepe atque accusantium, tempore rem rerum possimus? Cum error labore consequatur quisquam, laborum tempora officiis tempore iure vero alias nihil quibusdam voluptas earum. Et, veniam quibusdam reprehenderit nam earum doloribus aliquid natus inventore officiis ratione at delectus quia fugit? Illo voluptate fugiat, esse eius sed necessitatibus possimus commodi ratione nulla distinctio, alias ea praesentium dolores ab eaque iusto incidunt quasi ad tempore. Necessitatibus earum quibusdam non nemo ipsam voluptates totam est deserunt vero quia, qui neque sunt eius quo sed! Quae unde odio mollitia, maiores ex voluptatum beatae ullam porro hic. Eos rerum alias illo dolorem reiciendis, ea praesentium voluptas ducimus accusantium voluptatibus eveniet.',
    image: 'bg.jpeg'
  )
];