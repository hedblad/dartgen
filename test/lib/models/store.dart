import 'dart:convert';

@pragma('model', 'patchWith,clone,serialize')
class Store {
  @pragma('json:street')
  String street;

  Store({
    this.street,
  });

  void patch(Map _data) {
    if (_data == null) return null;
    street = _data['street'];
  }

  factory Store.fromMap(Map data) {
    if (data == null) return null;
    return Store()..patch(data);
  }

  Map<String, dynamic> toMap() => {
        'street': street,
      };
  String toJson() => json.encode(toMap());
  Map<String, dynamic> serialize() => {
        'street': street,
      };

  void patchWith(Store clone) {
    street = clone.street;
  }

  factory Store.clone(Store from) => Store(
        street: from.street,
      );

  factory Store.fromJson(String data) => Store.fromMap(json.decode(data));
}
