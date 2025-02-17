final List<ConstValue> constDocumentsTypes = [
  ConstValue(1, 'DNI', length: 8),
  ConstValue(7, 'Pasaporte', length: 12),
  ConstValue(4, 'Carnet de Extranjería', length: 12),
  ConstValue(0, 'Licencia de Conducir', length: 8)
];
final List<ConstValue> constGendersTypes = [
  ConstValue('F', 'Femenino'),
  ConstValue('M', 'Masculino'),
  ConstValue('O', 'Prefiero no decirlo')
];
final List<ConstValue> constPositionsTypes = [
  ConstValue(1, 'Dueño de Negocio'),
  ConstValue(2, 'Administrador'),
  ConstValue(3, 'Cajero'),
  ConstValue(4, 'Vendedor'),
  ConstValue(5, 'Mecánico'),
  ConstValue(6, 'Asistente'),
];

class ConstValue {
  final dynamic id;
  final String name;
  final int? length;

  ConstValue(this.id, this.name, {this.length});
}
