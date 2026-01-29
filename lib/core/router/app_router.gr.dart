// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [AddBillingAddressScreen]
class AddBillingAddressRoute extends PageRouteInfo<void> {
  const AddBillingAddressRoute({List<PageRouteInfo>? children})
    : super(AddBillingAddressRoute.name, initialChildren: children);

  static const String name = 'AddBillingAddressRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const AddBillingAddressScreen();
    },
  );
}

/// generated route for
/// [AddContactInformationScreen]
class AddContactInformationRoute extends PageRouteInfo<void> {
  const AddContactInformationRoute({List<PageRouteInfo>? children})
    : super(AddContactInformationRoute.name, initialChildren: children);

  static const String name = 'AddContactInformationRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const AddContactInformationScreen();
    },
  );
}

/// generated route for
/// [AddCreditCardScreen]
class AddCreditCardRoute extends PageRouteInfo<AddCreditCardRouteArgs> {
  AddCreditCardRoute({
    required dynamic Function() onClick,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
         AddCreditCardRoute.name,
         args: AddCreditCardRouteArgs(onClick: onClick, key: key),
         initialChildren: children,
       );

  static const String name = 'AddCreditCardRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AddCreditCardRouteArgs>();
      return AddCreditCardScreen(onClick: args.onClick, key: args.key);
    },
  );
}

class AddCreditCardRouteArgs {
  const AddCreditCardRouteArgs({required this.onClick, this.key});

  final dynamic Function() onClick;

  final Key? key;

  @override
  String toString() {
    return 'AddCreditCardRouteArgs{onClick: $onClick, key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! AddCreditCardRouteArgs) return false;
    return key == other.key;
  }

  @override
  int get hashCode => key.hashCode;
}

/// generated route for
/// [ChangePasswordScreen]
class ChangePasswordRoute extends PageRouteInfo<void> {
  const ChangePasswordRoute({List<PageRouteInfo>? children})
    : super(ChangePasswordRoute.name, initialChildren: children);

  static const String name = 'ChangePasswordRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ChangePasswordScreen();
    },
  );
}

/// generated route for
/// [ChangePasswordSettingsScreen]
class ChangePasswordSettingsRoute extends PageRouteInfo<void> {
  const ChangePasswordSettingsRoute({List<PageRouteInfo>? children})
    : super(ChangePasswordSettingsRoute.name, initialChildren: children);

  static const String name = 'ChangePasswordSettingsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ChangePasswordSettingsScreen();
    },
  );
}

/// generated route for
/// [ClubLocationScreen]
class ClubLocationRoute extends PageRouteInfo<void> {
  const ClubLocationRoute({List<PageRouteInfo>? children})
    : super(ClubLocationRoute.name, initialChildren: children);

  static const String name = 'ClubLocationRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ClubLocationScreen();
    },
  );
}

/// generated route for
/// [ClubScreen]
class ClubRoute extends PageRouteInfo<ClubRouteArgs> {
  ClubRoute({
    Key? key,
    required String id,
    required String distance,
    List<PageRouteInfo>? children,
  }) : super(
         ClubRoute.name,
         args: ClubRouteArgs(key: key, id: id, distance: distance),
         initialChildren: children,
       );

  static const String name = 'ClubRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ClubRouteArgs>();
      return ClubScreen(key: args.key, id: args.id, distance: args.distance);
    },
  );
}

class ClubRouteArgs {
  const ClubRouteArgs({this.key, required this.id, required this.distance});

  final Key? key;

  final String id;

  final String distance;

  @override
  String toString() {
    return 'ClubRouteArgs{key: $key, id: $id, distance: $distance}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ClubRouteArgs) return false;
    return key == other.key && id == other.id && distance == other.distance;
  }

  @override
  int get hashCode => key.hashCode ^ id.hashCode ^ distance.hashCode;
}

/// generated route for
/// [DairyRecordScreen]
class DairyRecordRoute extends PageRouteInfo<void> {
  const DairyRecordRoute({List<PageRouteInfo>? children})
    : super(DairyRecordRoute.name, initialChildren: children);

  static const String name = 'DairyRecordRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const DairyRecordScreen();
    },
  );
}

/// generated route for
/// [DashboardLayoutScreen]
class DashboardLayoutRoute extends PageRouteInfo<void> {
  const DashboardLayoutRoute({List<PageRouteInfo>? children})
    : super(DashboardLayoutRoute.name, initialChildren: children);

  static const String name = 'DashboardLayoutRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const DashboardLayoutScreen();
    },
  );
}

/// generated route for
/// [EditProfileScreen]
class EditProfileRoute extends PageRouteInfo<void> {
  const EditProfileRoute({List<PageRouteInfo>? children})
    : super(EditProfileRoute.name, initialChildren: children);

  static const String name = 'EditProfileRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const EditProfileScreen();
    },
  );
}

/// generated route for
/// [FavoriteClubScreen]
class FavoriteClubRoute extends PageRouteInfo<void> {
  const FavoriteClubRoute({List<PageRouteInfo>? children})
    : super(FavoriteClubRoute.name, initialChildren: children);

  static const String name = 'FavoriteClubRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const FavoriteClubScreen();
    },
  );
}

/// generated route for
/// [FilterScreen]
class FilterRoute extends PageRouteInfo<void> {
  const FilterRoute({List<PageRouteInfo>? children})
    : super(FilterRoute.name, initialChildren: children);

  static const String name = 'FilterRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const FilterScreen();
    },
  );
}

/// generated route for
/// [ForgetPasswordScreen]
class ForgetPasswordRoute extends PageRouteInfo<void> {
  const ForgetPasswordRoute({List<PageRouteInfo>? children})
    : super(ForgetPasswordRoute.name, initialChildren: children);

  static const String name = 'ForgetPasswordRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ForgetPasswordScreen();
    },
  );
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HomeScreen();
    },
  );
}

/// generated route for
/// [LoginScreen]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
    : super(LoginRoute.name, initialChildren: children);

  static const String name = 'LoginRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const LoginScreen();
    },
  );
}

/// generated route for
/// [MapScreen]
class MapRoute extends PageRouteInfo<void> {
  const MapRoute({List<PageRouteInfo>? children})
    : super(MapRoute.name, initialChildren: children);

  static const String name = 'MapRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const MapScreen();
    },
  );
}

/// generated route for
/// [ModifyDairyRecordScreen]
class ModifyDairyRecordRoute extends PageRouteInfo<void> {
  const ModifyDairyRecordRoute({List<PageRouteInfo>? children})
    : super(ModifyDairyRecordRoute.name, initialChildren: children);

  static const String name = 'ModifyDairyRecordRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ModifyDairyRecordScreen();
    },
  );
}

/// generated route for
/// [ModifySubDairyRecordScreen]
class ModifySubDairyRecordRoute
    extends PageRouteInfo<ModifySubDairyRecordRouteArgs> {
  ModifySubDairyRecordRoute({
    Key? key,
    required String diaryId,
    List<PageRouteInfo>? children,
  }) : super(
         ModifySubDairyRecordRoute.name,
         args: ModifySubDairyRecordRouteArgs(key: key, diaryId: diaryId),
         initialChildren: children,
       );

  static const String name = 'ModifySubDairyRecordRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ModifySubDairyRecordRouteArgs>();
      return ModifySubDairyRecordScreen(key: args.key, diaryId: args.diaryId);
    },
  );
}

class ModifySubDairyRecordRouteArgs {
  const ModifySubDairyRecordRouteArgs({this.key, required this.diaryId});

  final Key? key;

  final String diaryId;

  @override
  String toString() {
    return 'ModifySubDairyRecordRouteArgs{key: $key, diaryId: $diaryId}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ModifySubDairyRecordRouteArgs) return false;
    return key == other.key && diaryId == other.diaryId;
  }

  @override
  int get hashCode => key.hashCode ^ diaryId.hashCode;
}

/// generated route for
/// [OnboardingScreen]
class OnboardingRoute extends PageRouteInfo<void> {
  const OnboardingRoute({List<PageRouteInfo>? children})
    : super(OnboardingRoute.name, initialChildren: children);

  static const String name = 'OnboardingRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const OnboardingScreen();
    },
  );
}

/// generated route for
/// [ProfileScreen]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
    : super(ProfileRoute.name, initialChildren: children);

  static const String name = 'ProfileRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ProfileScreen();
    },
  );
}

/// generated route for
/// [RegisterScreen]
class RegisterRoute extends PageRouteInfo<void> {
  const RegisterRoute({List<PageRouteInfo>? children})
    : super(RegisterRoute.name, initialChildren: children);

  static const String name = 'RegisterRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const RegisterScreen();
    },
  );
}

/// generated route for
/// [ResourcesClubScreen]
class ResourcesClubRoute extends PageRouteInfo<void> {
  const ResourcesClubRoute({List<PageRouteInfo>? children})
    : super(ResourcesClubRoute.name, initialChildren: children);

  static const String name = 'ResourcesClubRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ResourcesClubScreen();
    },
  );
}

/// generated route for
/// [SeeAllScreen]
class SeeAllRoute extends PageRouteInfo<SeeAllRouteArgs> {
  SeeAllRoute({
    Key? key,
    required List<Datum> clubs,
    List<PageRouteInfo>? children,
  }) : super(
         SeeAllRoute.name,
         args: SeeAllRouteArgs(key: key, clubs: clubs),
         initialChildren: children,
       );

  static const String name = 'SeeAllRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SeeAllRouteArgs>();
      return SeeAllScreen(key: args.key, clubs: args.clubs);
    },
  );
}

class SeeAllRouteArgs {
  const SeeAllRouteArgs({this.key, required this.clubs});

  final Key? key;

  final List<Datum> clubs;

  @override
  String toString() {
    return 'SeeAllRouteArgs{key: $key, clubs: $clubs}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! SeeAllRouteArgs) return false;
    return key == other.key &&
        const ListEquality<Datum>().equals(clubs, other.clubs);
  }

  @override
  int get hashCode => key.hashCode ^ const ListEquality<Datum>().hash(clubs);
}

/// generated route for
/// [SettingsScreen]
class SettingsRoute extends PageRouteInfo<void> {
  const SettingsRoute({List<PageRouteInfo>? children})
    : super(SettingsRoute.name, initialChildren: children);

  static const String name = 'SettingsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SettingsScreen();
    },
  );
}

/// generated route for
/// [SplashScreen]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
    : super(SplashRoute.name, initialChildren: children);

  static const String name = 'SplashRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SplashScreen();
    },
  );
}

/// generated route for
/// [SubDairyRecordScreen]
class SubDairyRecordRoute extends PageRouteInfo<SubDairyRecordRouteArgs> {
  SubDairyRecordRoute({
    Key? key,
    String? title,
    String? date,
    String? diaryId,
    DairyDatum? datum,
    List<PageRouteInfo>? children,
  }) : super(
         SubDairyRecordRoute.name,
         args: SubDairyRecordRouteArgs(
           key: key,
           title: title,
           date: date,
           diaryId: diaryId,
           datum: datum,
         ),
         initialChildren: children,
       );

  static const String name = 'SubDairyRecordRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SubDairyRecordRouteArgs>(
        orElse: () => const SubDairyRecordRouteArgs(),
      );
      return SubDairyRecordScreen(
        key: args.key,
        title: args.title,
        date: args.date,
        diaryId: args.diaryId,
        datum: args.datum,
      );
    },
  );
}

class SubDairyRecordRouteArgs {
  const SubDairyRecordRouteArgs({
    this.key,
    this.title,
    this.date,
    this.diaryId,
    this.datum,
  });

  final Key? key;

  final String? title;

  final String? date;

  final String? diaryId;

  final DairyDatum? datum;

  @override
  String toString() {
    return 'SubDairyRecordRouteArgs{key: $key, title: $title, date: $date, diaryId: $diaryId, datum: $datum}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! SubDairyRecordRouteArgs) return false;
    return key == other.key &&
        title == other.title &&
        date == other.date &&
        diaryId == other.diaryId &&
        datum == other.datum;
  }

  @override
  int get hashCode =>
      key.hashCode ^
      title.hashCode ^
      date.hashCode ^
      diaryId.hashCode ^
      datum.hashCode;
}

/// generated route for
/// [SubscriptionScreen]
class SubscriptionRoute extends PageRouteInfo<void> {
  const SubscriptionRoute({List<PageRouteInfo>? children})
    : super(SubscriptionRoute.name, initialChildren: children);

  static const String name = 'SubscriptionRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SubscriptionScreen();
    },
  );
}

/// generated route for
/// [TransactionFilterScreen]
class TransactionFilterRoute extends PageRouteInfo<void> {
  const TransactionFilterRoute({List<PageRouteInfo>? children})
    : super(TransactionFilterRoute.name, initialChildren: children);

  static const String name = 'TransactionFilterRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const TransactionFilterScreen();
    },
  );
}

/// generated route for
/// [TransactionHistoryScreen]
class TransactionHistoryRoute extends PageRouteInfo<void> {
  const TransactionHistoryRoute({List<PageRouteInfo>? children})
    : super(TransactionHistoryRoute.name, initialChildren: children);

  static const String name = 'TransactionHistoryRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const TransactionHistoryScreen();
    },
  );
}

/// generated route for
/// [TransactionHistoryViewAllScreen]
class TransactionHistoryViewAllRoute extends PageRouteInfo<void> {
  const TransactionHistoryViewAllRoute({List<PageRouteInfo>? children})
    : super(TransactionHistoryViewAllRoute.name, initialChildren: children);

  static const String name = 'TransactionHistoryViewAllRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const TransactionHistoryViewAllScreen();
    },
  );
}

/// generated route for
/// [VerificationCodeScreen]
class VerificationCodeRoute extends PageRouteInfo<void> {
  const VerificationCodeRoute({List<PageRouteInfo>? children})
    : super(VerificationCodeRoute.name, initialChildren: children);

  static const String name = 'VerificationCodeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const VerificationCodeScreen();
    },
  );
}
