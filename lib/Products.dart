class Products{
String? name;
String? description;
double? price;
double? rating;
String? thumbnail;

Products({this.name, this.description ,this.price, this.rating, this.thumbnail});


}

Products phone1 = Products(name: "iPhone 9",description: "An apple mobile which is nothing like apple", price: 549, rating: 4.5, thumbnail: "https://i.dummyjson.com/data/products/1/thumbnail.jpg");
Products phone2 = Products(name: "iPhone X",description: "SIM-Free, Model A19211 6.5-inch Super Retina HD display with OLED technology A12 Bionic chip with ...", price:899, rating: 4, thumbnail:"https://i.dummyjson.com/data/products/2/thumbnail.jpg");
Products phone3 = Products(name: "Samsung Universe 9",description: "Samsung's new variant which goes beyond Galaxy to the Universe", price: 549, rating: 3.5, thumbnail: "https://i.dummyjson.com/data/products/3/thumbnail.jpg");
Products phone4 = Products(name: "OPPOF19",description: "OPPO F19 is officially announced on April 2021.", price: 549, rating: 5, thumbnail: "https://i.dummyjson.com/data/products/4/thumbnail.jpg");
Products phone5 = Products(name: "Huawei P30",description: "Huawei’s re-badged P30 Pro New Edition was officially unveiled yesterday in Germany and now the device has made its way to the UK", price: 549, rating: 2.5, thumbnail: "https://i.dummyjson.com/data/products/5/thumbnail.jpg");
Products laptop = Products(name: "MacBook Pro",description: "MacBook Pro 2021 with mini-LED display may launch between September, November", price: 549, rating: 3, thumbnail: "https://i.dummyjson.com/data/products/6/thumbnail.png");

List<Products> productsmob = [phone1,phone2,phone3, phone4, phone5, laptop];