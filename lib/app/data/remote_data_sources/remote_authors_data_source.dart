class RemoteAuthorsDataSource {
  Future<List<Map<String, dynamic>>> getAuthorsData() async {
    return [
      {
        "author_id": 1,
        "bio":
            "Ford jest uważany za jednego z najbardziej wpływowych przedsiębiorców w historii motoryzacji. Jego wkład w rozwój przemysłu samochodowego oraz wprowadzenie modelu T, który stał się pierwszym masowo produkowanym samochodem, jest niezaprzeczalny.",
        "picture":
            "https://cdn.pixabay.com/photo/2012/10/26/02/32/henry-ford-63113_1280.jpg",
        "source":
            "https://pixabay.com/pl/photos/henry-ford-portret-facet-63113/"
      },
      {
        "author_id": 2,
        "bio":
            "Tony Robbins to amerykański mówca motywacyjny, pisarz i coach. Jego książki i seminaria motywacyjne przyczyniły się do zmiany życia tysięcy ludzi na całym świecie. Robbins jest znany z przekazywania narzędzi i strategii, które pomagają osiągnąć sukces i osobistą transformację.",
        "picture":
            "https://upload.wikimedia.org/wikipedia/commons/5/5e/Tony_Robbins.jpg",
        "source": "https://commons.wikimedia.org/wiki/File:Tony_Robbins.jpg"
      },
      {
        "author_id": 3,
        "bio":
            "Albert Schweitzer był niemieckim lekarzem, filozofem, teologiem i muzykiem. Jego filozofia opierała się na idei szacunku dla życia i altruizmu. Schweitzer poświęcił większość swojego życia na misję medyczną w Afryce Środkowej, gdzie założył szpital i pomagał biednym i chorym.",
        "picture":
            "https://cdn.pixabay.com/photo/2021/05/06/22/31/albert-schweitzer-6234657_1280.png",
        "source":
            "https://pixabay.com/pl/illustrations/albert-schweitzer-twarz-facet-6234657/"
      },
    ];
  }
}
