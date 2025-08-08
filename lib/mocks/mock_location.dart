import '../models/location.dart';
import '../models/location_fact.dart';

class MockLocation {
  static final List<Location> items = [
    Location(
      "Yelagiri Hills-Nature Park",
      'https://images.pexels.com/photos/1324803/pexels-photo-1324803.jpeg',
      <LocationFact>[
        LocationFact(
          'Garden of Nature',
          'Yelagiri Hills is a picturesque hill station located in the Vellore district of the southern Indian state of Tamil Nadu. This tranquil and relatively lesser-known destination is known for its natural beauty, serene environment, and pleasant climate.',
        ),
        LocationFact(
          'Flora and Fauna',
          'Yelagiri is home to a diverse range of flora and fauna. The hill station is known for its fruit orchards, rose gardens, and medicinal herb gardens. While trekking or taking nature walks, you can spot various bird species and even encounter wildlife like monkeys and rabbits.',
        ),
        LocationFact(
          'Adventure Activities',
          'In addition to trekking and boating, Yelagiri also offers adventure activities such as paragliding. The Yelagiri Adventure Sports Association provides opportunities for adventure enthusiasts to experience the thrill of paragliding over the hills.',
        ),
      ],
    ),
    Location(
      "Yellagiri Hills- fundera Park",
      'https://images.pexels.com/photos/1519088/pexels-photo-1519088.jpeg',
      <LocationFact>[
        LocationFact(
          'Nature Park',
          'Yelagiri Hills is a picturesque hill station located in the Vellore district of the southern Indian state of Tamil Nadu. This tranquil and relatively lesser-known destination is known for its natural beauty, serene environment, and pleasant climate.',
        ),
        LocationFact(
          'Flora and Fauna',
          'Yelagiri is home to a diverse range of flora and fauna. The hill station is known for its fruit orchards, rose gardens, and medicinal herb gardens. While trekking or taking nature walks, you can spot various bird species and even encounter wildlife like monkeys and rabbits.',
        ),
        LocationFact(
          'Adventure Activities',
          'In addition to trekking and boating, Yelagiri also offers adventure activities such as paragliding. The Yelagiri Adventure Sports Association provides opportunities for adventure enthusiasts to experience the thrill of paragliding over the hills.',
        ),
      ],
    ),
    Location(
      "Yellagiri Hills - View Point",
      'https://images.pexels.com/photos/1519088/pexels-photo-1519088.jpeg',
      <LocationFact>[
        LocationFact(
          'Nature Park',
          'Yelagiri Hills is a picturesque hill station located in the Vellore district of the southern Indian state of Tamil Nadu. This tranquil and relatively lesser-known destination is known for its natural beauty, serene environment, and pleasant climate.',
        ),
        LocationFact(
          'Flora and Fauna',
          'Yelagiri is home to a diverse range of flora and fauna. The hill station is known for its fruit orchards, rose gardens, and medicinal herb gardens. While trekking or taking nature walks, you can spot various bird species and even encounter wildlife like monkeys and rabbits.',
        ),
        LocationFact(
          'Adventure Activities',
          'In addition to trekking and boating, Yelagiri also offers adventure activities such as paragliding. The Yelagiri Adventure Sports Association provides opportunities for adventure enthusiasts to experience the thrill of paragliding over the hills.',
        ),
      ],
    ),
    Location(
      "Yellagiri Hills- Suicide Point",
      'https://images.pexels.com/photos/1324803/pexels-photo-1324803.jpeg',
      <LocationFact>[
        LocationFact(
          'Nature Park',
          'Yelagiri Hills is a picturesque hill station located in the Vellore district of the southern Indian state of Tamil Nadu. This tranquil and relatively lesser-known destination is known for its natural beauty, serene environment, and pleasant climate.',
        ),
        LocationFact(
          'Flora and Fauna',
          'Yelagiri is home to a diverse range of flora and fauna. The hill station is known for its fruit orchards, rose gardens, and medicinal herb gardens. While trekking or taking nature walks, you can spot various bird species and even encounter wildlife like monkeys and rabbits.',
        ),
        LocationFact(
          'Adventure Activities',
          'In addition to trekking and boating, Yelagiri also offers adventure activities such as paragliding. The Yelagiri Adventure Sports Association provides opportunities for adventure enthusiasts to experience the thrill of paragliding over the hills.',
        ),
      ],
    ),
  ];

  static Location FetchAny() {
    return MockLocation.items[0];
  }

  static List<Location> FetchAll() {
    return MockLocation.items;
  }
}
