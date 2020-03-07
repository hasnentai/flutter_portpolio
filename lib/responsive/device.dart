
class Device {
  getDevice() {}
}

class Desktop implements Device {
  @override
  Map<String,dynamic> getDevice() {
    return {
      'device':'Desktop',
      'title_font_size':25,
      'sub_title_font_size':80,
      'icon_size':30,
      'social_media_icons_size':70
    };
  }
}

class Tablet implements Device {
  @override
   Map<String,dynamic> getDevice() {
    return {
      'device':'Tablet',
      'title_font_size':20,
      'sub_title_font_size':60,
      'icon_size':30,
      'social_media_icons_size':30
    };
  }
}

class Mobile implements Device {
  @override
   Map<String,dynamic> getDevice() {
    return {
      'device':'Mobile',
      'title_font_size':12,
      'sub_title_font_size':30,
      'icon_size':25,
      'social_media_icons_size':20
    };
  }
}

class DeviceFactory {
  Device device(double size) {
    if (size == null) {
      return null;
    }
    if (size >= 576.0 && size <= 767.0) {
      return Mobile();
    } else if (size >= 768.0 && size <= 991.0) {
      return Tablet();
    } else if (size >= 992.0) {
      return Desktop();
    } else {
      return Mobile();
    }
    
  }
}
