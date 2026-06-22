// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_locale_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AppLocaleController)
final appLocaleControllerProvider = AppLocaleControllerProvider._();

final class AppLocaleControllerProvider
    extends $AsyncNotifierProvider<AppLocaleController, String> {
  AppLocaleControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appLocaleControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appLocaleControllerHash();

  @$internal
  @override
  AppLocaleController create() => AppLocaleController();
}

String _$appLocaleControllerHash() =>
    r'a018cd11560025ee19e764cd209f84fb7c985a51';

abstract class _$AppLocaleController extends $AsyncNotifier<String> {
  FutureOr<String> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<String>, String>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<String>, String>,
              AsyncValue<String>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
