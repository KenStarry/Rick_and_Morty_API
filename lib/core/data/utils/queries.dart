class Queries {
  static String getCharactersQuery() => """
     query getCharacters {
        characters {
          results {
            name
            image
            id
            gender
            created
            species
            status
            type
          }
        }
      }
  """;

  static String getHumanAlienCharacters() => """
    query getCharacters(\$species: String) {
      characters(filter: {species: \$species}) {
        results {
          name
          image
          id
          gender
          created
          species
          status
          type
        }
      }
    }
  """;
}
