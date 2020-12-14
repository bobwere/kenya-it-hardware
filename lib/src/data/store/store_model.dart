// To parse this JSON data, do
//
//     final storeModel = storeModelFromJson(jsonString);

import 'dart:convert';

StoreModel storeModelFromJson(String str) =>
    StoreModel.fromJson(json.decode(str));

String storeModelToJson(StoreModel data) => json.encode(data.toJson());

class StoreModel {
  StoreModel({
    this.company,
    this.users,
    this.categories,
    this.products,
    this.orders,
  });

  Company company;
  List<User> users;
  List<Category> categories;
  List<Product> products;
  List<Order> orders;

  StoreModel copyWith({
    Company company,
    List<User> users,
    List<Category> categories,
    List<Product> products,
    List<Order> orders,
  }) =>
      StoreModel(
        company: company ?? this.company,
        users: users ?? this.users,
        categories: categories ?? this.categories,
        products: products ?? this.products,
        orders: orders ?? this.orders,
      );

  factory StoreModel.fromJson(Map<String, dynamic> json) => StoreModel(
        company:
            json["company"] == null ? null : Company.fromJson(json["company"]),
        users: json["users"] == null
            ? null
            : List<User>.from(json["users"].map((x) => User.fromJson(x))),
        categories: json["categories"] == null
            ? null
            : List<Category>.from(
                json["categories"].map((x) => Category.fromJson(x))),
        products: json["products"] == null
            ? null
            : List<Product>.from(
                json["products"].map((x) => Product.fromJson(x))),
        orders: json["orders"] == null
            ? null
            : List<Order>.from(json["orders"].map((x) => Order.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "company": company == null ? null : company.toJson(),
        "users": users == null
            ? null
            : List<dynamic>.from(users.map((x) => x.toJson())),
        "categories": categories == null
            ? null
            : List<dynamic>.from(categories.map((x) => x.toJson())),
        "products": products == null
            ? null
            : List<dynamic>.from(products.map((x) => x.toJson())),
        "orders": orders == null
            ? null
            : List<dynamic>.from(orders.map((x) => x.toJson())),
      };
}

class Category {
  Category({
    this.id,
    this.name,
    this.description,
  });

  int id;
  String name;
  String description;

  Category copyWith({
    int id,
    String name,
    String description,
  }) =>
      Category(
        id: id ?? this.id,
        name: name ?? this.name,
        description: description ?? this.description,
      );

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        description: json["description"] == null ? null : json["description"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "name": name == null ? null : name,
        "description": description == null ? null : description,
      };
}

class Company {
  Company({
    this.name,
    this.logo,
    this.contact,
    this.branches,
  });

  String name;
  String logo;
  String contact;
  List<Branch> branches;

  Company copyWith({
    String name,
    String logo,
    String contact,
    List<Branch> branches,
  }) =>
      Company(
        name: name ?? this.name,
        logo: logo ?? this.logo,
        contact: contact ?? this.contact,
        branches: branches ?? this.branches,
      );

  factory Company.fromJson(Map<String, dynamic> json) => Company(
        name: json["name"] == null ? null : json["name"],
        logo: json["logo"] == null ? null : json["logo"],
        contact: json["contact"] == null ? null : json["contact"],
        branches: json["branches"] == null
            ? null
            : List<Branch>.from(
                json["branches"].map((x) => Branch.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "name": name == null ? null : name,
        "logo": logo == null ? null : logo,
        "contact": contact == null ? null : contact,
        "branches": branches == null
            ? null
            : List<dynamic>.from(branches.map((x) => x.toJson())),
      };
}

class Branch {
  Branch({
    this.id,
    this.city,
    this.address,
  });

  int id;
  String city;
  String address;

  Branch copyWith({
    int id,
    String city,
    String address,
  }) =>
      Branch(
        id: id ?? this.id,
        city: city ?? this.city,
        address: address ?? this.address,
      );

  factory Branch.fromJson(Map<String, dynamic> json) => Branch(
        id: json["id"] == null ? null : json["id"],
        city: json["city"] == null ? null : json["city"],
        address: json["address"] == null ? null : json["address"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "city": city == null ? null : city,
        "address": address == null ? null : address,
      };
}

class Order {
  Order({
    this.id,
    this.userId,
    this.productId,
    this.branchId,
    this.quantity,
    this.date,
    this.status,
  });

  int id;
  int userId;
  int productId;
  int branchId;
  int quantity;
  String date;
  String status;

  Order copyWith({
    int id,
    int userId,
    int productId,
    int branchId,
    int quantity,
    String date,
    String status,
  }) =>
      Order(
        id: id ?? this.id,
        userId: userId ?? this.userId,
        productId: productId ?? this.productId,
        branchId: branchId ?? this.branchId,
        quantity: quantity ?? this.quantity,
        date: date ?? this.date,
        status: status ?? this.status,
      );

  factory Order.fromJson(Map<String, dynamic> json) => Order(
        id: json["id"] == null ? null : json["id"],
        userId: json["user_id"] == null ? null : json["user_id"],
        productId: json["product_id"] == null ? null : json["product_id"],
        branchId: json["branch_id"] == null ? null : json["branch_id"],
        quantity: json["quantity"] == null ? null : json["quantity"],
        date: json["date"] == null ? null : json["date"],
        status: json["status"] == null ? null : json["status"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "user_id": userId == null ? null : userId,
        "product_id": productId == null ? null : productId,
        "branch_id": branchId == null ? null : branchId,
        "quantity": quantity == null ? null : quantity,
        "date": date == null ? null : date,
        "status": status == null ? null : status,
      };
}

class Product {
  Product({
    this.id,
    this.categoryId,
    this.name,
    this.description,
    this.price,
    this.picture,
    this.productNew,
    this.stock,
  });

  int id;
  int categoryId;
  String name;
  String description;
  int price;
  String picture;
  bool productNew;
  List<Stock> stock;

  Product copyWith({
    int id,
    int categoryId,
    String name,
    String description,
    int price,
    String picture,
    bool productNew,
    List<Stock> stock,
  }) =>
      Product(
        id: id ?? this.id,
        categoryId: categoryId ?? this.categoryId,
        name: name ?? this.name,
        description: description ?? this.description,
        price: price ?? this.price,
        picture: picture ?? this.picture,
        productNew: productNew ?? this.productNew,
        stock: stock ?? this.stock,
      );

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"] == null ? null : json["id"],
        categoryId: json["category_id"] == null ? null : json["category_id"],
        name: json["name"] == null ? null : json["name"],
        description: json["description"] == null ? null : json["description"],
        price: json["price"] == null ? null : json["price"],
        picture: json["picture"] == null ? null : json["picture"],
        productNew: json["new"] == null ? null : json["new"],
        stock: json["stock"] == null
            ? null
            : List<Stock>.from(json["stock"].map((x) => Stock.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "category_id": categoryId == null ? null : categoryId,
        "name": name == null ? null : name,
        "description": description == null ? null : description,
        "price": price == null ? null : price,
        "picture": picture == null ? null : picture,
        "new": productNew == null ? null : productNew,
        "stock": stock == null
            ? null
            : List<dynamic>.from(stock.map((x) => x.toJson())),
      };
}

class Stock {
  Stock({
    this.branch,
    this.stock,
  });

  int branch;
  int stock;

  Stock copyWith({
    int branch,
    int stock,
  }) =>
      Stock(
        branch: branch ?? this.branch,
        stock: stock ?? this.stock,
      );

  factory Stock.fromJson(Map<String, dynamic> json) => Stock(
        branch: json["branch"] == null ? null : json["branch"],
        stock: json["stock"] == null ? null : json["stock"],
      );

  Map<String, dynamic> toJson() => {
        "branch": branch == null ? null : branch,
        "stock": stock == null ? null : stock,
      };
}

class User {
  User({
    this.id,
    this.username,
    this.password,
    this.name,
    this.email,
    this.picture,
  });

  int id;
  String username;
  String password;
  String name;
  String email;
  String picture;

  User copyWith({
    int id,
    String username,
    String password,
    String name,
    String email,
    String picture,
  }) =>
      User(
        id: id ?? this.id,
        username: username ?? this.username,
        password: password ?? this.password,
        name: name ?? this.name,
        email: email ?? this.email,
        picture: picture ?? this.picture,
      );

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"] == null ? null : json["id"],
        username: json["username"] == null ? null : json["username"],
        password: json["password"] == null ? null : json["password"],
        name: json["name"] == null ? null : json["name"],
        email: json["email"] == null ? null : json["email"],
        picture: json["picture"] == null ? null : json["picture"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "username": username == null ? null : username,
        "password": password == null ? null : password,
        "name": name == null ? null : name,
        "email": email == null ? null : email,
        "picture": picture == null ? null : picture,
      };
}
