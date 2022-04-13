extension MyClass on String {
  String get capitalize {
    String text = this;
    var output = StringBuffer();
    text = text.replaceFirst(this[0], this[0].toUpperCase());
    for (int i = 0; i < text.length; i++) {
      if (text[i].contains(' ')) {
        text = text.replaceRange(i + 1, i + 2, text[i + 1].toUpperCase());
      }
    }
    output.write(text);
    return output.toString();
  }

  String get capitalizeFirst {
    var output = StringBuffer();
    String text = this;
    text = text.replaceFirst(this[0], this[0].toUpperCase());
    output.write(text);
    return output.toString();
  }

  String get camelCase {
    String text = this;
    var output = StringBuffer();
    for (int i = 0; i < text.length; i++) {
      if (text[i].contains(' ')) {
        text = text.replaceRange(i, i + 2, text[i + 1].toUpperCase());
      }
    }
    output.write(text);
    return output.toString();
  }

  String get isAlphabetOnly {
    var output = StringBuffer();
    String text = this;
    bool isAlp = false;
    if (text.contains(RegExp('[\\d]'))) {
      isAlp = false;
    } else {
      isAlp = true;
    }
    output.write(isAlp);
    return output.toString();
  }

  String get isBool {
    var output = StringBuffer();
    bool isBoolen = true;
    if (this is bool) {
      isBoolen = true;
    } else {
      isBoolen = false;
    }
    output.write(isBoolen);
    return output.toString();
  }

  String get isEmail {
    String password = this;
    var output = StringBuffer();

    int p1 = 0;
    int p2 = 0;
    int p3 = 0;
    int p4 = 0;
    // Matches any non-alphanumeric character.
    if (password.contains(RegExp('[\\W]'))) {
      print("Parolda noto'g'ri belgi qatnashgan");
    }
    // password length
    if (password.length >= 8) {
      p1 = 1;
    }
    // katta harflikka tekshirish;
    if (password.contains(RegExp('[A-Z]'))) {
      p2 = 1;
    }
    // kichik harflikka tekshirish;
    if (password.contains(RegExp('[a-z]'))) {
      p3 = 1;
    }
    // rqaqmlikka tekshirish;
    if (password.contains(RegExp('[0-9]'))) {
      p4 = 1;
    }
    if (p1 == 1 && p2 == 1 && p3 == 1 && p4 == 1) {
      print('Parolingiz yaroqli');
    } else if (p1 == 0) {
      print("Parolingiz 8 ta belgidan kam");
    }
    if (p2 == 0) {
      print("Parolingizda katta harf qatnashmagan");
    }
    if (p3 == 0) {
      print("Parolingizda kichik harf qatnashmagan");
    }
    if (p4 == 0) {
      print("Parolingizda raqam qatnashmagan");
    }

    output.write(password);
    return output.toString();
  }

  String get isPhoneNumber {
    var output = StringBuffer();
    String phone = this;
    phone = phone.replaceAll(RegExp('[0-9]'), 'x');
    String str = '';
    if(phone.contains('(xxx) xxx-xxxx') || 'xxx-xxx-xxxx' == phone){
      str+= 'Raqam tug\'ri kiritildi';
    }else{
      str+= 'Raqamni tug\'ri kiriting';
    }
    output.write(str);
    return output.toString();
  }


  String get isUrl {
    var output = StringBuffer();
    String url = this;
    String str = '';
    if(url.startsWith('http://WWW')){
      str += 'Bu url';
    }else{
      str += 'Bu url emas';
    }
    output.write(str);
    return output.toString();
  }

}
