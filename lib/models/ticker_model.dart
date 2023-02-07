class TickerModel {
  Stream<int> tick() {
    return Stream.periodic(const Duration(seconds: 1), (computationCount) => computationCount + 1);
  }
}
