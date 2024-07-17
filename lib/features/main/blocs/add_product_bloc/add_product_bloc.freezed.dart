// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddProductEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String? name, String? price,
            String? stockPrice, Uint8List? image)
        editProduct,
    required TResult Function(ProductModel product) addProduct,
    required TResult Function(String id) deleteProduct,
    required TResult Function() removeProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String? name, String? price,
            String? stockPrice, Uint8List? image)?
        editProduct,
    TResult? Function(ProductModel product)? addProduct,
    TResult? Function(String id)? deleteProduct,
    TResult? Function()? removeProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String? name, String? price, String? stockPrice,
            Uint8List? image)?
        editProduct,
    TResult Function(ProductModel product)? addProduct,
    TResult Function(String id)? deleteProduct,
    TResult Function()? removeProducts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EditProduct value) editProduct,
    required TResult Function(_AddProduct value) addProduct,
    required TResult Function(_DeleteProduct value) deleteProduct,
    required TResult Function(_RemoveProducts value) removeProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EditProduct value)? editProduct,
    TResult? Function(_AddProduct value)? addProduct,
    TResult? Function(_DeleteProduct value)? deleteProduct,
    TResult? Function(_RemoveProducts value)? removeProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditProduct value)? editProduct,
    TResult Function(_AddProduct value)? addProduct,
    TResult Function(_DeleteProduct value)? deleteProduct,
    TResult Function(_RemoveProducts value)? removeProducts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddProductEventCopyWith<$Res> {
  factory $AddProductEventCopyWith(
          AddProductEvent value, $Res Function(AddProductEvent) then) =
      _$AddProductEventCopyWithImpl<$Res, AddProductEvent>;
}

/// @nodoc
class _$AddProductEventCopyWithImpl<$Res, $Val extends AddProductEvent>
    implements $AddProductEventCopyWith<$Res> {
  _$AddProductEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddProductEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$EditProductImplCopyWith<$Res> {
  factory _$$EditProductImplCopyWith(
          _$EditProductImpl value, $Res Function(_$EditProductImpl) then) =
      __$$EditProductImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String id,
      String? name,
      String? price,
      String? stockPrice,
      Uint8List? image});
}

/// @nodoc
class __$$EditProductImplCopyWithImpl<$Res>
    extends _$AddProductEventCopyWithImpl<$Res, _$EditProductImpl>
    implements _$$EditProductImplCopyWith<$Res> {
  __$$EditProductImplCopyWithImpl(
      _$EditProductImpl _value, $Res Function(_$EditProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? price = freezed,
    Object? stockPrice = freezed,
    Object? image = freezed,
  }) {
    return _then(_$EditProductImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      stockPrice: freezed == stockPrice
          ? _value.stockPrice
          : stockPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ));
  }
}

/// @nodoc

class _$EditProductImpl implements _EditProduct {
  const _$EditProductImpl(
      {required this.id, this.name, this.price, this.stockPrice, this.image});

  @override
  final String id;
  @override
  final String? name;
  @override
  final String? price;
  @override
  final String? stockPrice;
  @override
  final Uint8List? image;

  @override
  String toString() {
    return 'AddProductEvent.editProduct(id: $id, name: $name, price: $price, stockPrice: $stockPrice, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditProductImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.stockPrice, stockPrice) ||
                other.stockPrice == stockPrice) &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, price, stockPrice,
      const DeepCollectionEquality().hash(image));

  /// Create a copy of AddProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditProductImplCopyWith<_$EditProductImpl> get copyWith =>
      __$$EditProductImplCopyWithImpl<_$EditProductImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String? name, String? price,
            String? stockPrice, Uint8List? image)
        editProduct,
    required TResult Function(ProductModel product) addProduct,
    required TResult Function(String id) deleteProduct,
    required TResult Function() removeProducts,
  }) {
    return editProduct(id, name, price, stockPrice, image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String? name, String? price,
            String? stockPrice, Uint8List? image)?
        editProduct,
    TResult? Function(ProductModel product)? addProduct,
    TResult? Function(String id)? deleteProduct,
    TResult? Function()? removeProducts,
  }) {
    return editProduct?.call(id, name, price, stockPrice, image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String? name, String? price, String? stockPrice,
            Uint8List? image)?
        editProduct,
    TResult Function(ProductModel product)? addProduct,
    TResult Function(String id)? deleteProduct,
    TResult Function()? removeProducts,
    required TResult orElse(),
  }) {
    if (editProduct != null) {
      return editProduct(id, name, price, stockPrice, image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EditProduct value) editProduct,
    required TResult Function(_AddProduct value) addProduct,
    required TResult Function(_DeleteProduct value) deleteProduct,
    required TResult Function(_RemoveProducts value) removeProducts,
  }) {
    return editProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EditProduct value)? editProduct,
    TResult? Function(_AddProduct value)? addProduct,
    TResult? Function(_DeleteProduct value)? deleteProduct,
    TResult? Function(_RemoveProducts value)? removeProducts,
  }) {
    return editProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditProduct value)? editProduct,
    TResult Function(_AddProduct value)? addProduct,
    TResult Function(_DeleteProduct value)? deleteProduct,
    TResult Function(_RemoveProducts value)? removeProducts,
    required TResult orElse(),
  }) {
    if (editProduct != null) {
      return editProduct(this);
    }
    return orElse();
  }
}

abstract class _EditProduct implements AddProductEvent {
  const factory _EditProduct(
      {required final String id,
      final String? name,
      final String? price,
      final String? stockPrice,
      final Uint8List? image}) = _$EditProductImpl;

  String get id;
  String? get name;
  String? get price;
  String? get stockPrice;
  Uint8List? get image;

  /// Create a copy of AddProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditProductImplCopyWith<_$EditProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddProductImplCopyWith<$Res> {
  factory _$$AddProductImplCopyWith(
          _$AddProductImpl value, $Res Function(_$AddProductImpl) then) =
      __$$AddProductImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProductModel product});
}

/// @nodoc
class __$$AddProductImplCopyWithImpl<$Res>
    extends _$AddProductEventCopyWithImpl<$Res, _$AddProductImpl>
    implements _$$AddProductImplCopyWith<$Res> {
  __$$AddProductImplCopyWithImpl(
      _$AddProductImpl _value, $Res Function(_$AddProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$AddProductImpl(
      null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel,
    ));
  }
}

/// @nodoc

class _$AddProductImpl implements _AddProduct {
  const _$AddProductImpl(this.product);

  @override
  final ProductModel product;

  @override
  String toString() {
    return 'AddProductEvent.addProduct(product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddProductImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  /// Create a copy of AddProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddProductImplCopyWith<_$AddProductImpl> get copyWith =>
      __$$AddProductImplCopyWithImpl<_$AddProductImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String? name, String? price,
            String? stockPrice, Uint8List? image)
        editProduct,
    required TResult Function(ProductModel product) addProduct,
    required TResult Function(String id) deleteProduct,
    required TResult Function() removeProducts,
  }) {
    return addProduct(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String? name, String? price,
            String? stockPrice, Uint8List? image)?
        editProduct,
    TResult? Function(ProductModel product)? addProduct,
    TResult? Function(String id)? deleteProduct,
    TResult? Function()? removeProducts,
  }) {
    return addProduct?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String? name, String? price, String? stockPrice,
            Uint8List? image)?
        editProduct,
    TResult Function(ProductModel product)? addProduct,
    TResult Function(String id)? deleteProduct,
    TResult Function()? removeProducts,
    required TResult orElse(),
  }) {
    if (addProduct != null) {
      return addProduct(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EditProduct value) editProduct,
    required TResult Function(_AddProduct value) addProduct,
    required TResult Function(_DeleteProduct value) deleteProduct,
    required TResult Function(_RemoveProducts value) removeProducts,
  }) {
    return addProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EditProduct value)? editProduct,
    TResult? Function(_AddProduct value)? addProduct,
    TResult? Function(_DeleteProduct value)? deleteProduct,
    TResult? Function(_RemoveProducts value)? removeProducts,
  }) {
    return addProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditProduct value)? editProduct,
    TResult Function(_AddProduct value)? addProduct,
    TResult Function(_DeleteProduct value)? deleteProduct,
    TResult Function(_RemoveProducts value)? removeProducts,
    required TResult orElse(),
  }) {
    if (addProduct != null) {
      return addProduct(this);
    }
    return orElse();
  }
}

abstract class _AddProduct implements AddProductEvent {
  const factory _AddProduct(final ProductModel product) = _$AddProductImpl;

  ProductModel get product;

  /// Create a copy of AddProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddProductImplCopyWith<_$AddProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteProductImplCopyWith<$Res> {
  factory _$$DeleteProductImplCopyWith(
          _$DeleteProductImpl value, $Res Function(_$DeleteProductImpl) then) =
      __$$DeleteProductImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$DeleteProductImplCopyWithImpl<$Res>
    extends _$AddProductEventCopyWithImpl<$Res, _$DeleteProductImpl>
    implements _$$DeleteProductImplCopyWith<$Res> {
  __$$DeleteProductImplCopyWithImpl(
      _$DeleteProductImpl _value, $Res Function(_$DeleteProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteProductImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteProductImpl implements _DeleteProduct {
  const _$DeleteProductImpl({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'AddProductEvent.deleteProduct(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteProductImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of AddProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteProductImplCopyWith<_$DeleteProductImpl> get copyWith =>
      __$$DeleteProductImplCopyWithImpl<_$DeleteProductImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String? name, String? price,
            String? stockPrice, Uint8List? image)
        editProduct,
    required TResult Function(ProductModel product) addProduct,
    required TResult Function(String id) deleteProduct,
    required TResult Function() removeProducts,
  }) {
    return deleteProduct(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String? name, String? price,
            String? stockPrice, Uint8List? image)?
        editProduct,
    TResult? Function(ProductModel product)? addProduct,
    TResult? Function(String id)? deleteProduct,
    TResult? Function()? removeProducts,
  }) {
    return deleteProduct?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String? name, String? price, String? stockPrice,
            Uint8List? image)?
        editProduct,
    TResult Function(ProductModel product)? addProduct,
    TResult Function(String id)? deleteProduct,
    TResult Function()? removeProducts,
    required TResult orElse(),
  }) {
    if (deleteProduct != null) {
      return deleteProduct(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EditProduct value) editProduct,
    required TResult Function(_AddProduct value) addProduct,
    required TResult Function(_DeleteProduct value) deleteProduct,
    required TResult Function(_RemoveProducts value) removeProducts,
  }) {
    return deleteProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EditProduct value)? editProduct,
    TResult? Function(_AddProduct value)? addProduct,
    TResult? Function(_DeleteProduct value)? deleteProduct,
    TResult? Function(_RemoveProducts value)? removeProducts,
  }) {
    return deleteProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditProduct value)? editProduct,
    TResult Function(_AddProduct value)? addProduct,
    TResult Function(_DeleteProduct value)? deleteProduct,
    TResult Function(_RemoveProducts value)? removeProducts,
    required TResult orElse(),
  }) {
    if (deleteProduct != null) {
      return deleteProduct(this);
    }
    return orElse();
  }
}

abstract class _DeleteProduct implements AddProductEvent {
  const factory _DeleteProduct({required final String id}) =
      _$DeleteProductImpl;

  String get id;

  /// Create a copy of AddProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteProductImplCopyWith<_$DeleteProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveProductsImplCopyWith<$Res> {
  factory _$$RemoveProductsImplCopyWith(_$RemoveProductsImpl value,
          $Res Function(_$RemoveProductsImpl) then) =
      __$$RemoveProductsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RemoveProductsImplCopyWithImpl<$Res>
    extends _$AddProductEventCopyWithImpl<$Res, _$RemoveProductsImpl>
    implements _$$RemoveProductsImplCopyWith<$Res> {
  __$$RemoveProductsImplCopyWithImpl(
      _$RemoveProductsImpl _value, $Res Function(_$RemoveProductsImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddProductEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RemoveProductsImpl implements _RemoveProducts {
  const _$RemoveProductsImpl();

  @override
  String toString() {
    return 'AddProductEvent.removeProducts()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RemoveProductsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String? name, String? price,
            String? stockPrice, Uint8List? image)
        editProduct,
    required TResult Function(ProductModel product) addProduct,
    required TResult Function(String id) deleteProduct,
    required TResult Function() removeProducts,
  }) {
    return removeProducts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String? name, String? price,
            String? stockPrice, Uint8List? image)?
        editProduct,
    TResult? Function(ProductModel product)? addProduct,
    TResult? Function(String id)? deleteProduct,
    TResult? Function()? removeProducts,
  }) {
    return removeProducts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String? name, String? price, String? stockPrice,
            Uint8List? image)?
        editProduct,
    TResult Function(ProductModel product)? addProduct,
    TResult Function(String id)? deleteProduct,
    TResult Function()? removeProducts,
    required TResult orElse(),
  }) {
    if (removeProducts != null) {
      return removeProducts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EditProduct value) editProduct,
    required TResult Function(_AddProduct value) addProduct,
    required TResult Function(_DeleteProduct value) deleteProduct,
    required TResult Function(_RemoveProducts value) removeProducts,
  }) {
    return removeProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EditProduct value)? editProduct,
    TResult? Function(_AddProduct value)? addProduct,
    TResult? Function(_DeleteProduct value)? deleteProduct,
    TResult? Function(_RemoveProducts value)? removeProducts,
  }) {
    return removeProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditProduct value)? editProduct,
    TResult Function(_AddProduct value)? addProduct,
    TResult Function(_DeleteProduct value)? deleteProduct,
    TResult Function(_RemoveProducts value)? removeProducts,
    required TResult orElse(),
  }) {
    if (removeProducts != null) {
      return removeProducts(this);
    }
    return orElse();
  }
}

abstract class _RemoveProducts implements AddProductEvent {
  const factory _RemoveProducts() = _$RemoveProductsImpl;
}

/// @nodoc
mixin _$AddProductState {
  List<ProductModel> get products => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ProductModel> products) selectedProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ProductModel> products)? selectedProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ProductModel> products)? selectedProducts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectedProducts value) selectedProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectedProducts value)? selectedProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectedProducts value)? selectedProducts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of AddProductState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddProductStateCopyWith<AddProductState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddProductStateCopyWith<$Res> {
  factory $AddProductStateCopyWith(
          AddProductState value, $Res Function(AddProductState) then) =
      _$AddProductStateCopyWithImpl<$Res, AddProductState>;
  @useResult
  $Res call({List<ProductModel> products});
}

/// @nodoc
class _$AddProductStateCopyWithImpl<$Res, $Val extends AddProductState>
    implements $AddProductStateCopyWith<$Res> {
  _$AddProductStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddProductState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_value.copyWith(
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SelectedProductsImplCopyWith<$Res>
    implements $AddProductStateCopyWith<$Res> {
  factory _$$SelectedProductsImplCopyWith(_$SelectedProductsImpl value,
          $Res Function(_$SelectedProductsImpl) then) =
      __$$SelectedProductsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ProductModel> products});
}

/// @nodoc
class __$$SelectedProductsImplCopyWithImpl<$Res>
    extends _$AddProductStateCopyWithImpl<$Res, _$SelectedProductsImpl>
    implements _$$SelectedProductsImplCopyWith<$Res> {
  __$$SelectedProductsImplCopyWithImpl(_$SelectedProductsImpl _value,
      $Res Function(_$SelectedProductsImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddProductState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_$SelectedProductsImpl(
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ));
  }
}

/// @nodoc

class _$SelectedProductsImpl implements _SelectedProducts {
  const _$SelectedProductsImpl(
      {final List<ProductModel> products = const <ProductModel>[]})
      : _products = products;

  final List<ProductModel> _products;
  @override
  @JsonKey()
  List<ProductModel> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'AddProductState.selectedProducts(products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectedProductsImpl &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

  /// Create a copy of AddProductState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectedProductsImplCopyWith<_$SelectedProductsImpl> get copyWith =>
      __$$SelectedProductsImplCopyWithImpl<_$SelectedProductsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ProductModel> products) selectedProducts,
  }) {
    return selectedProducts(products);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ProductModel> products)? selectedProducts,
  }) {
    return selectedProducts?.call(products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ProductModel> products)? selectedProducts,
    required TResult orElse(),
  }) {
    if (selectedProducts != null) {
      return selectedProducts(products);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectedProducts value) selectedProducts,
  }) {
    return selectedProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectedProducts value)? selectedProducts,
  }) {
    return selectedProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectedProducts value)? selectedProducts,
    required TResult orElse(),
  }) {
    if (selectedProducts != null) {
      return selectedProducts(this);
    }
    return orElse();
  }
}

abstract class _SelectedProducts implements AddProductState {
  const factory _SelectedProducts({final List<ProductModel> products}) =
      _$SelectedProductsImpl;

  @override
  List<ProductModel> get products;

  /// Create a copy of AddProductState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectedProductsImplCopyWith<_$SelectedProductsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
