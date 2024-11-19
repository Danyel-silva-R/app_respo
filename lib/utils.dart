  
extension CorteString on String {
  String corte(int count) {
    if (length > count) {
      return '${substring(0, count)}...';
    }
    return this;
  }
}