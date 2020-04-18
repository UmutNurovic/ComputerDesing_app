

class Categories {
  final String name;

  Categories({this.name});
}

List<Categories> dummyCategories = [
  Categories(name: "Computer Cases"),
  Categories(name: "KVM Switches"),
  Categories(name: "Optical Drives"),
  Categories(name: "External Hard Drives"),
  Categories(name: "External Sound Cards"),
  Categories(name: "Computer Components"),
];

class IMages {
  final String imaage;
  final String name;

  IMages({this.imaage, this.name});
}

List<IMages> ImagesCote = [
  IMages(imaage: "asstes/Comp1.jpeg", name: "Computer Case"),
  IMages(imaage: "asstes/keyb.jpg", name: "Keyborad"),
  IMages(imaage: "asstes/setupComp.jpeg", name: "Computer Setup"),
];

class cateG {
  final String image;
  final String name;
  final String fiyat;

  cateG({this.name, this.image, this.fiyat});


}
List<cateG>  ImagesCoteCom= [
  cateG(image: "asstes/CatComp.jpg", name: "Corsair", fiyat: "4600\$"),
  cateG(image: "asstes/Comp1.jpeg", name: "Corsair", fiyat: "2600\$"),
  cateG(image: "asstes/Comp2.jpg", name: "Be quiet!", fiyat: "2600\$"),
  cateG(image: "asstes/Comp3.jpg", name: "Zalman X3", fiyat: "3400\$"),
];

class disco {
  final String image;
  final String name;
  final String fiyat;

  disco({this.name, this.image, this.fiyat});
}
List<disco>  discoimage= [
  disco(image: "asstes/key2.jpeg", name: "Logitech G213 Gaming \nKeyboard with Dedicated Media \nControls, 16.8 Million\n Lighting Colors Backlit Keys, \nSpill-Resistant and Durable Design", fiyat: "44.00\$"),
  disco(image: "asstes/images.jpeg", name: "Razer Huntsman Gaming \nKeyboard: Fastest Keyboard Switches\n Ever - Clicky Optical Switches - \nCustomizable Chroma RGB Lighting - \nProgrammable Macro Functionality - \nClassic Black", fiyat: "300\$"),

];