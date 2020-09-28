import 'location_fact.dart';

class Location {
  final int id;
  String name;
  String imagePath;
  final List<LocationFact> facts;

  Location(this.id, this.name, this.imagePath, this.facts);

  static List<Location> fetchAll() {
    return [
      Location(1,'Japanse Maple', 'assets/images/tree-with-red-leaves.jpg', [
        LocationFact("About", "Japanese maple trees add grace and beauty through the seasons. While the Bloodgood Japanese maple is a tried-and-true specimen you'll probably recognize, consider some of our favorite varieties—including dwarf Japanese maple—that feature a spectacle of vibrant leaf color."),
      ]),
      Location(2,'Lake Chiyoda, Köfu', 'assets/images/town-at-the-mountain.jpg', [
        LocationFact("About", "is the capital city of Yamanashi Prefecture, Japan. As of 1 April 2019, the city had an estimated population of 187,985 in 90,924 households, and a population density of 880 persons per km2. The total area of the city is 212.41 square kilometres (82.01 sq mi). K&ouml;fu's name means \"capital of Kai Province\". During the Sengoku period, it was famous as the stronghold of Takeda Shingen"),
      ]),
      Location(3,'Sensö-ji Temple', 'assets/images/sensoji-temple.jpg', [
        LocationFact("About", "is an ancient Buddhist temple located in Asakusa, Tokyo, Japan. It is Tokyo's oldest temple, and one of its most significant. Formerly associated with the Tendai sect of Buddhism, it became independent after World War II. Adjacent to the temple is a five-story pagoda, the Asakusa Shinto shrine, as well as many shops with traditional goods in the Nakamise-döri.The Senso-ji Kannon temple is dedicated to Kannon Bosatsu, the Bodhisattva of compassion, and is the most widely visited spiritual site in the world with over 30 million visitors annually"),
      ]),
    ];
  }
  static Location fetchByID(int locationID) {
    // fetch all locations, iterate theme and when we find the location
    // with the ID we want, return it immediately
    List<Location> locations = Location.fetchAll();
    for (var i = 0; i< locations.length; i++) {
      if(locations[i].id == locationID) {
        return locations[i];
      }
    }
    return null;
  }

}