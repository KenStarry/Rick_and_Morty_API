class Queries {
  String getCharactersQuery() => """
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
}
