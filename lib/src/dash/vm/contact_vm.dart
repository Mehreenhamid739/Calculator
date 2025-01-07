import 'package:calculator_app/src/dash/modal/contact_model.dart';
import 'package:flutter/material.dart';

class ContactVM extends ChangeNotifier {
  ContactVM() {
    addContacts();
  }

  List<ContactModel> allContacts = [];

  void addContacts() {
    allContacts.add(
      ContactModel(
          name: 'Mehreen',
          img:
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRf6zoRR_FPG7f2knECoYTgOuETejMYPg71vg&s",
          phone: "03459751263"),
    );
    allContacts.add(
      ContactModel(
          name: 'Aqib',
          img:
              "https://gratisography.com/wp-content/uploads/2024/11/gratisography-augmented-reality-800x525.jpg",
          phone: "03459811263"),
    );
    allContacts.add(
      ContactModel(
          name: 'b',
          img:
              "https://images.pexels.com/photos/733853/pexels-photo-733853.jpeg",
          phone: "0345811263"),
    );
    allContacts.add(
      ContactModel(
          name: 'c',
          img:
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRf6zoRR_FPG7f2knECoYTgOuETejMYPg71vg&s",
          phone: "03459456263"),
    );
    allContacts.add(
      ContactModel(
          name: 'd',
          img:
              "https://gratisography.com/wp-content/uploads/2024/11/gratisography-augmented-reality-800x525.jp",
          phone: "03459811263"),
    );
    allContacts.add(
      ContactModel(
          name: 'e',
          img:
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRf6zoRR_FPG7f2knECoYTgOuETejMYPg71vg&s",
          phone: "03459868563"),
    );
    allContacts.add(
      ContactModel(
          name: 'f',
          img:
              "https://images.pexels.com/photos/733853/pexels-photo-733853.jpeg",
          phone: "03459811263"),
    );
    allContacts.add(
      ContactModel(
          name: 'g',
          img:
              "https://gratisography.com/wp-content/uploads/2024/11/gratisography-augmented-reality-800x525.jp",
          phone: "03459811263"),
    );
    allContacts.add(
      ContactModel(
          name: 'h',
          img:
              "https://images.pexels.com/photos/733853/pexels-photo-733853.jpeg",
          phone: "03459811263"),
    );
    allContacts.add(
      ContactModel(
          name: 'i',
          img:
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRf6zoRR_FPG7f2knECoYTgOuETejMYPg71vg&s",
          phone: "03459811263"),
    );
    allContacts.add(
      ContactModel(
          name: 'j',
          img:
              "https://images.pexels.com/photos/733853/pexels-photo-733853.jpeg",
          phone: "03459811263"),
    );
    allContacts.add(
      ContactModel(
          name: 'k',
          img:
              "https://gratisography.com/wp-content/uploads/2024/11/gratisography-augmented-reality-800x525.jp",
          phone: "03459471263"),
    );
    allContacts.add(
      ContactModel(
          name: 'l',
          img:
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRf6zoRR_FPG7f2knECoYTgOuETejMYPg71vg&s",
          phone: "03459817263"),
    );
    allContacts.add(
      ContactModel(
          name: 'm',
          img:
              "https://images.pexels.com/photos/733853/pexels-photo-733853.jpeg",
          phone: "03459811263"),
    );
    allContacts.add(
      ContactModel(
          name: 'n',
          img:
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRf6zoRR_FPG7f2knECoYTgOuETejMYPg71vg&s",
          phone: "03457411263"),
    );
    allContacts.add(
      ContactModel(
          name: 'o',
          img:
              "https://gratisography.com/wp-content/uploads/2024/11/gratisography-augmented-reality-800x525.jp",
          phone: "01239811263"),
    );

    notifyListeners();
  }
}
