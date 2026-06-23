// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_theme_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AppThemeController)
final appThemeControllerProvider = AppThemeControllerProvider._();

final class AppThemeControllerProvider
    extends $AsyncNotifierProvider<AppThemeController, ThemeMode> {
  AppThemeControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appThemeControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appThemeControllerHash();

  @$internal
  @override
  AppThemeController create() => AppThemeController();
}

String _$appThemeControllerHash() =>
    r'c7915149106c91baa001f9edb87587776e103ded';

abstract class _$AppThemeController extends $AsyncNotifier<ThemeMode> {
  FutureOr<ThemeMode> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<ThemeMode>, ThemeMode>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<ThemeMode>, ThemeMode>,
              AsyncValue<ThemeMode>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
