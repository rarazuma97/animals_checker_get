class Endpoints {
  const Endpoints._();

  static String baseUrl = 'https://apiv3.iucnredlist.org/api/v3/species/';
  static String animalSpecies = 'category/VU';
  static String speciesById(String id) => 'id/$id';

 
}
