class EnumUtil {
  static T fromStringEnum<T>(Iterable<T> values, String stringType) {
    return values.firstWhere((element) =>
        element.toString().split('.').last.toString() == stringType);
  }

  static String toStringEnum<T>(T enumType) {
    return enumType.toString().split('.').last;
  }
}

enum UrlEndPoint {
  login,
  checkCustomer,
  customerAdd,
  agreementForms,
  submitAgreementForm,
  customerCheckIn,
  customerDetail,
  logout,
}

enum FormFieldTypeEnum{
  checkboxGroup,
  date,
  header,
  number,
  paragraph,
  radioGroup,
  select,
  text,
  textarea,
}