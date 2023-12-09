
class Item {
  String? title ; 
  String? category ; 
  // ignore: non_constant_identifier_names
  String? thumb_url ; 
  String? location ; 
  double? price ; 




  Item(this.title , this.category ,  this.location , this.price,this.thumb_url ) ; 

  static List<Item> recommenadtion = [
    Item("Modren House For rental", "House", "SHENINELKOM", 600, "https://images.pexels.com/photos/1029599/pexels-photo-1029599.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1") , 
    Item("fLAT FOR RENTAL", "flat", "Berketelsaba", 8000, "https://images.pexels.com/photos/1612351/pexels-photo-1612351.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1") , 
    Item("Vila for sales", "Vila", "Sharmelshekhk", 9000, "https://images.pexels.com/photos/1022936/pexels-photo-1022936.jpeg?auto=compress&cs=tinysrgb&w=600") , 
    Item("Smallhouse for rental", "House", "Tanta", 2300, "https://images.pexels.com/photos/2360673/pexels-photo-2360673.jpeg?auto=compress&cs=tinysrgb&w=600") , 
  ] ; 
   static List<Item> nearby = [
    Item(" Large House For rental", "Flat", "gharbia", 600, "https://images.pexels.com/photos/6045329/pexels-photo-6045329.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1") , 
    Item("fLAT FOR student", "House", "shariqa", 8000, "https://images.pexels.com/photos/6775268/pexels-photo-6775268.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1") , 
    Item("Room for Rental", "Room", "Uae", 9000, "https://images.pexels.com/photos/6908500/pexels-photo-6908500.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1") , 
    Item("Small vola for rental", "Vila", "Usa", 2300, "https://images.pexels.com/photos/4450337/pexels-photo-4450337.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1") , 
  ] ; 
  
}