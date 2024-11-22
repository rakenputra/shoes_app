class Rating{
  final double rate;
  final int count;

  Rating ({required this.rate, required this.count});
}

class Shoe {
  final String id;
  final String name;
  final double price;
  final String imageUrl;
  final Rating rating;
  final String description;

  Shoe({required this.id, required this.name, required this.price, required this.imageUrl, required this.rating, required this.description});

  factory Shoe.fromJson(Map<String, dynamic> json) {
    return Shoe(
      id: json['id'].toString(),
      name: json['name'],
      price: json['price'].toDouble(),
      imageUrl: json['image'],
      rating: Rating( // Create a Rating object
        rate: json['rating']['rate'].toDouble(), // Extract the rate
        count: json['rating']['count'], // Extract the count
      ),
      description: json['description'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'price': price,
      'imageUrl': imageUrl,
    };
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Shoe && other.id == id; // Compare by ID for uniqueness
  }

  @override
  int get hashCode => id.hashCode; // Hash code based on ID

}