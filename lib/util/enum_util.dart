class EnumUtil {
  static T fromStringEnum<T>(Iterable<T> values, String stringType) {
    return values.firstWhere((element) =>
        element.toString().split('.').last.toString() == stringType);
  }

  static String toStringEnum<T>(T enumType) {
    return enumType.toString().split('.').last;
  }
}

enum BottomBarItemEnum{
  chats,
  star,
  price,
  cards,
  profile,
  search,
}