class ProductPointsState {
  final bool isLoading;
  final int? productPoints; // Nullable to represent no data
  final String? error;      // Nullable to represent no error

  // Constructor with default isLoading = false
  ProductPointsState({this.isLoading = false, this.productPoints, this.error});

  // CopyWith method to create new instances with updated values
  ProductPointsState copyWith({bool? isLoading, int? productPoints, String? error}) {
    return ProductPointsState(
      isLoading: isLoading ?? this.isLoading,
      productPoints: productPoints ?? this.productPoints,
      error: error ?? this.error,
    );
  }

  // Getter to check if productPoints exists
  bool get hasPoints => productPoints != null;
}
