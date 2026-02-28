// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_initializer_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AppInitializer)
const appInitializerProvider = AppInitializerProvider._();

final class AppInitializerProvider
    extends $NotifierProvider<AppInitializer, AppInitModel> {
  const AppInitializerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appInitializerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appInitializerHash();

  @$internal
  @override
  AppInitializer create() => AppInitializer();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AppInitModel value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AppInitModel>(value),
    );
  }
}

String _$appInitializerHash() => r'0120c0b54cf33cd77ded04f83040bddec816f7b4';

abstract class _$AppInitializer extends $Notifier<AppInitModel> {
  AppInitModel build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AppInitModel, AppInitModel>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AppInitModel, AppInitModel>,
              AppInitModel,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
