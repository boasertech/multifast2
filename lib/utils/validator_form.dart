mixin ValidatorForm {
  /// Valida si el valor es un número válido
  String? validateNumber(String? value) {
    if (value == null || value.isEmpty) return 'El número no puede estar vacío';
    final number = num.tryParse(value);
    if (number == null) return 'Debe ser un número válido';
    return null;
  }

  /// Valida un email con una expresión regular
  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) return 'El email es obligatorio';
    final regex = RegExp(r'^[^@]+@[^@]+\.[a-zA-Z]{2,}$');
    if (!regex.hasMatch(value)) return 'Formato de email no válido';
    return null;
  }

   /// Valida un email con una expresión regular
  String? validateIsEmpty(String? value) {
    if (value == null || value.isEmpty) return 'Este campo es obligatorio';
    return null;
  }

  /// Valida que el texto tenga una longitud mínima
  String? validateMinLength(String? value, int minLength) {
    if (value == null || value.length < minLength) {
      return 'Debe tener al menos $minLength caracteres';
    }
    return null;
  }
}
