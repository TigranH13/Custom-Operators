void main() {
  const names = ['Dangla', 'Xoz', 'Esh'];
  print((names * 3));
}

extension Times<T> on Iterable<T> {
  Iterable<T> operator *(int times) sync* {
    for (var i = 0; i < times; i++) {
      yield* this;
    }
  }
}
