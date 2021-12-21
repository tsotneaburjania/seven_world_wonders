import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:seven_world_wonders/data/world_wonders.dart';

class WorldWonder {
  final String name;
  final String description;
  final LatLng latLong;
  final String image;

  WorldWonder({
    required this.name,
    required this.description,
    required this.latLong,
    required this.image
  });
}

var worldWondersList = <WorldWonder>[
  WorldWonder(
    name: 'Great Wall of China',
    description:
        'Ancient world wonder that winds for more than 5,500 miles across China, with towers & walkways.',
    latLong: const LatLng(
      40.43216084180758,
      116.57040708522712,
    ),
    image: 'http://www.harbinice.com/public/richfiles/photos/winter%20destinations/beijing/the-great-wall-of-china/badaling%20(14).jpg',
  ),
  WorldWonder(
    name: 'Taj Mahal',
    description:
        '17th-century, Mughal-style, marble mausoleum with minarets, a mosque & famously symmetrical gardens.',
    latLong: const LatLng(
      27.175335673428222,
      78.04221730035984,
    ),
    image: 'https://i.pinimg.com/236x/26/8f/17/268f1797326263b917296fe231c19714--agra-taj-mahal.jpg',

  ),
  WorldWonder(
    name: 'The Treasury, Petra, Jordan',
    description:
        'Carved out of sandstone rock face, this elaborate, ancient temple is said to have been a mausoleum.',
    latLong: const LatLng(
      30.32237070992996,
      35.451777885059556,
    ),
    image: 'https://www.businessdestinations.com/wp-content/uploads/2011/12/D051_rt.jpg',

  ),
  WorldWonder(
    name: 'Christ the Redeemer',
    description:
        'Giant (98-ft.-tall) mountaintop statue of Jesus Christ, accessed by train & offering city views.',
    latLong: const LatLng(
      -22.95178261221184,
      -43.21048183712498,
    ),
    image: 'https://fastly.4sqi.net/img/general/200x200/32771163_XHPUMCkeYGqHixv9tADtlBwoWabt4_PnXtZ93eftpa0.jpg',
  ),
  WorldWonder(
    name: 'Colosseum',
    description:
        'Monumental 3-tiered Roman amphitheater once used for gladiatorial games, with guided tour option.',
    latLong: const LatLng(
      41.89054071576094,
      12.492309342707411,
    ),
    image: 'https://images.freeimages.com/images/premium/large-thumbs/2602/26023527-the-colosseum-in-rome-italy.jpg',
  ),
  WorldWonder(
    name: 'Machu Pichu',
    description:
        'Iconic hilltop ruins of a large 15th-century Inca city featuring numerous structures & terraces.',
    latLong: const LatLng(
      -13.162953145699777,
      -72.54490925745016,
    ),
    image: 'http://static.gigapan.com/gigapans0/116906/images/116906-200x200-66119-140876-1156-75912.jpg',
  ),
  WorldWonder(
    name: 'Chichén Itzá',
    description:
        'Archaeological site with excavated ruins of the large Maya city, including an iconic step pyramid.',
    latLong: const LatLng(
      20.684694457253432,
      -88.56777138822471,
    ),
    image: 'https://fastly.4sqi.net/img/general/200x200/542370556_pB0ZPi6uFF7yyib-806sM5tNQH83Zw8feDOU15x2HZU.jpg',
  ),
];
