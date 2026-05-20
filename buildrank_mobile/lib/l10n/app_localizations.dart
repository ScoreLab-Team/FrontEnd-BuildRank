import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ca.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ca'),
    Locale('es'),
    Locale('en'),
  ];

  /// No description provided for @authLanguageLabel.
  ///
  /// In ca, this message translates to:
  /// **'Idioma'**
  String get authLanguageLabel;

  /// No description provided for @authLanguageCatalan.
  ///
  /// In ca, this message translates to:
  /// **'Català'**
  String get authLanguageCatalan;

  /// No description provided for @authLanguageSpanish.
  ///
  /// In ca, this message translates to:
  /// **'Español'**
  String get authLanguageSpanish;

  /// No description provided for @authLanguageEnglish.
  ///
  /// In ca, this message translates to:
  /// **'English'**
  String get authLanguageEnglish;

  /// No description provided for @authLoginTab.
  ///
  /// In ca, this message translates to:
  /// **'Inicia sessió'**
  String get authLoginTab;

  /// No description provided for @authRegisterTab.
  ///
  /// In ca, this message translates to:
  /// **'Registra\'t'**
  String get authRegisterTab;

  /// No description provided for @authRegisterSuccessWithEmail.
  ///
  /// In ca, this message translates to:
  /// **'Compte creat correctament. Ara pots iniciar sessió amb {email}.'**
  String authRegisterSuccessWithEmail(String email);

  /// No description provided for @loginWelcomeTitle.
  ///
  /// In ca, this message translates to:
  /// **'Benvingut a BuildRank'**
  String get loginWelcomeTitle;

  /// No description provided for @loginWelcomeSubtitle.
  ///
  /// In ca, this message translates to:
  /// **'Gestiona el teu edifici, consulta el rànquing energètic i segueix la teva evolució des d\'un únic lloc.'**
  String get loginWelcomeSubtitle;

  /// No description provided for @loginCardTitle.
  ///
  /// In ca, this message translates to:
  /// **'Inicia sessió'**
  String get loginCardTitle;

  /// No description provided for @loginCardSubtitle.
  ///
  /// In ca, this message translates to:
  /// **'Accedeix amb el teu compte per veure la informació del teu edifici.'**
  String get loginCardSubtitle;

  /// No description provided for @emailLabel.
  ///
  /// In ca, this message translates to:
  /// **'Correu electrònic'**
  String get emailLabel;

  /// No description provided for @emailHint.
  ///
  /// In ca, this message translates to:
  /// **'nom@exemple.com'**
  String get emailHint;

  /// No description provided for @passwordLabel.
  ///
  /// In ca, this message translates to:
  /// **'Contrasenya'**
  String get passwordLabel;

  /// No description provided for @loginForgotPassword.
  ///
  /// In ca, this message translates to:
  /// **'Has oblidat la contrasenya?'**
  String get loginForgotPassword;

  /// No description provided for @loginButton.
  ///
  /// In ca, this message translates to:
  /// **'Entrar'**
  String get loginButton;

  /// No description provided for @loginGoogleButton.
  ///
  /// In ca, this message translates to:
  /// **'Continuar amb Google'**
  String get loginGoogleButton;

  /// No description provided for @loginMissingFieldsError.
  ///
  /// In ca, this message translates to:
  /// **'Has d\'omplir el correu i la contrasenya.'**
  String get loginMissingFieldsError;

  /// No description provided for @registerTitle.
  ///
  /// In ca, this message translates to:
  /// **'Crea un compte'**
  String get registerTitle;

  /// No description provided for @registerSubtitle.
  ///
  /// In ca, this message translates to:
  /// **'Comença el seguiment del teu edifici avui'**
  String get registerSubtitle;

  /// No description provided for @registerCardTitle.
  ///
  /// In ca, this message translates to:
  /// **'Registra\'t'**
  String get registerCardTitle;

  /// No description provided for @registerCardSubtitle.
  ///
  /// In ca, this message translates to:
  /// **'Crea el teu compte per començar a gestionar edificis.'**
  String get registerCardSubtitle;

  /// No description provided for @registerRoleHeader.
  ///
  /// In ca, this message translates to:
  /// **'SELECCIONA EL TEU ROL'**
  String get registerRoleHeader;

  /// No description provided for @registerRoleAdmin.
  ///
  /// In ca, this message translates to:
  /// **'Admin.\nfinca'**
  String get registerRoleAdmin;

  /// No description provided for @registerRoleOwner.
  ///
  /// In ca, this message translates to:
  /// **'Propietari'**
  String get registerRoleOwner;

  /// No description provided for @registerRoleTenant.
  ///
  /// In ca, this message translates to:
  /// **'Llogater'**
  String get registerRoleTenant;

  /// No description provided for @firstNameLabel.
  ///
  /// In ca, this message translates to:
  /// **'Nom'**
  String get firstNameLabel;

  /// No description provided for @lastNameLabel.
  ///
  /// In ca, this message translates to:
  /// **'Cognoms'**
  String get lastNameLabel;

  /// No description provided for @confirmPasswordLabel.
  ///
  /// In ca, this message translates to:
  /// **'Confirmar contrasenya'**
  String get confirmPasswordLabel;

  /// No description provided for @registerAcceptTermsPrefix.
  ///
  /// In ca, this message translates to:
  /// **'Accepto els '**
  String get registerAcceptTermsPrefix;

  /// No description provided for @registerTermsOfService.
  ///
  /// In ca, this message translates to:
  /// **'Termes del Servei'**
  String get registerTermsOfService;

  /// No description provided for @registerAcceptTermsMiddle.
  ///
  /// In ca, this message translates to:
  /// **' i la '**
  String get registerAcceptTermsMiddle;

  /// No description provided for @registerPrivacyPolicy.
  ///
  /// In ca, this message translates to:
  /// **'Política de Privacitat'**
  String get registerPrivacyPolicy;

  /// No description provided for @registerCreateAccountButton.
  ///
  /// In ca, this message translates to:
  /// **'Crea el compte de BuildRank'**
  String get registerCreateAccountButton;

  /// No description provided for @registerGoogleButton.
  ///
  /// In ca, this message translates to:
  /// **'Crear compte amb Google'**
  String get registerGoogleButton;

  /// No description provided for @registerMissingFieldsError.
  ///
  /// In ca, this message translates to:
  /// **'Has d\'omplir tots els camps.'**
  String get registerMissingFieldsError;

  /// No description provided for @registerPasswordsMismatchError.
  ///
  /// In ca, this message translates to:
  /// **'Les contrasenyes no coincideixen.'**
  String get registerPasswordsMismatchError;

  /// No description provided for @registerAcceptTermsError.
  ///
  /// In ca, this message translates to:
  /// **'Has d\'acceptar els termes i condicions.'**
  String get registerAcceptTermsError;

  /// No description provided for @registerSuccessInline.
  ///
  /// In ca, this message translates to:
  /// **'Compte creat correctament. Ara ja pots iniciar sessió.'**
  String get registerSuccessInline;

  /// No description provided for @registerSuccessSnackBar.
  ///
  /// In ca, this message translates to:
  /// **'Registre completat correctament.'**
  String get registerSuccessSnackBar;

  /// No description provided for @passwordResetAppBarTitle.
  ///
  /// In ca, this message translates to:
  /// **'Recuperar contrasenya'**
  String get passwordResetAppBarTitle;

  /// No description provided for @passwordResetRequestTitle.
  ///
  /// In ca, this message translates to:
  /// **'Recupera la contrasenya'**
  String get passwordResetRequestTitle;

  /// No description provided for @passwordResetConfirmTitle.
  ///
  /// In ca, this message translates to:
  /// **'Crea una nova contrasenya'**
  String get passwordResetConfirmTitle;

  /// No description provided for @passwordResetRequestSubtitle.
  ///
  /// In ca, this message translates to:
  /// **'Escriu el correu associat al teu compte i enganxa l\'enllaç rebut per email.'**
  String get passwordResetRequestSubtitle;

  /// No description provided for @passwordResetConfirmSubtitle.
  ///
  /// In ca, this message translates to:
  /// **'Introdueix una nova contrasenya per al teu compte.'**
  String get passwordResetConfirmSubtitle;

  /// No description provided for @passwordResetSendInstructions.
  ///
  /// In ca, this message translates to:
  /// **'Enviar instruccions'**
  String get passwordResetSendInstructions;

  /// No description provided for @passwordResetHaveLinkTitle.
  ///
  /// In ca, this message translates to:
  /// **'Ja tens l\'enllaç?'**
  String get passwordResetHaveLinkTitle;

  /// No description provided for @passwordResetHaveLinkBody.
  ///
  /// In ca, this message translates to:
  /// **'Enganxa aquí l\'enllaç rebut per email. BuildRank n\'extraurà automàticament el uid i el token.'**
  String get passwordResetHaveLinkBody;

  /// No description provided for @passwordResetLinkLabel.
  ///
  /// In ca, this message translates to:
  /// **'Enllaç de recuperació'**
  String get passwordResetLinkLabel;

  /// No description provided for @passwordResetLinkHint.
  ///
  /// In ca, this message translates to:
  /// **'https://.../reset-password?uid=...&token=...'**
  String get passwordResetLinkHint;

  /// No description provided for @passwordResetContinueWithLink.
  ///
  /// In ca, this message translates to:
  /// **'Continuar amb l\'enllaç'**
  String get passwordResetContinueWithLink;

  /// No description provided for @newPasswordLabel.
  ///
  /// In ca, this message translates to:
  /// **'Nova contrasenya'**
  String get newPasswordLabel;

  /// No description provided for @confirmNewPasswordLabel.
  ///
  /// In ca, this message translates to:
  /// **'Confirmar nova contrasenya'**
  String get confirmNewPasswordLabel;

  /// No description provided for @passwordResetSubmit.
  ///
  /// In ca, this message translates to:
  /// **'Restablir contrasenya'**
  String get passwordResetSubmit;

  /// No description provided for @passwordResetPasteAnotherLink.
  ///
  /// In ca, this message translates to:
  /// **'Tornar a enganxar un altre enllaç'**
  String get passwordResetPasteAnotherLink;

  /// No description provided for @passwordResetEmailRequiredError.
  ///
  /// In ca, this message translates to:
  /// **'Introdueix el teu correu electrònic.'**
  String get passwordResetEmailRequiredError;

  /// No description provided for @passwordResetRequestSuccess.
  ///
  /// In ca, this message translates to:
  /// **'Si el correu existeix, rebràs un enllaç per restablir la contrasenya. Enganxa\'l aquí quan el tinguis.'**
  String get passwordResetRequestSuccess;

  /// No description provided for @passwordResetLinkRequiredError.
  ///
  /// In ca, this message translates to:
  /// **'Enganxa l\'enllaç de recuperació rebut per email.'**
  String get passwordResetLinkRequiredError;

  /// No description provided for @passwordResetInvalidLinkError.
  ///
  /// In ca, this message translates to:
  /// **'No s\'han pogut trobar els paràmetres uid i token dins l\'enllaç.'**
  String get passwordResetInvalidLinkError;

  /// No description provided for @passwordResetLinkValidatedSuccess.
  ///
  /// In ca, this message translates to:
  /// **'Enllaç validat. Introdueix la nova contrasenya.'**
  String get passwordResetLinkValidatedSuccess;

  /// No description provided for @passwordResetPasswordRequiredError.
  ///
  /// In ca, this message translates to:
  /// **'Introdueix i confirma la nova contrasenya.'**
  String get passwordResetPasswordRequiredError;

  /// No description provided for @passwordResetSuccessSnackBar.
  ///
  /// In ca, this message translates to:
  /// **'Contrasenya restablerta correctament.'**
  String get passwordResetSuccessSnackBar;

  /// No description provided for @legalTermsTitle.
  ///
  /// In ca, this message translates to:
  /// **'Termes del Servei'**
  String get legalTermsTitle;

  /// No description provided for @legalPrivacyTitle.
  ///
  /// In ca, this message translates to:
  /// **'Política de Privacitat'**
  String get legalPrivacyTitle;

  /// No description provided for @legalTermsSubtitle.
  ///
  /// In ca, this message translates to:
  /// **'Condicions bàsiques d\'ús de BuildRank'**
  String get legalTermsSubtitle;

  /// No description provided for @legalPrivacySubtitle.
  ///
  /// In ca, this message translates to:
  /// **'Com BuildRank tracta les dades dins del MVP'**
  String get legalPrivacySubtitle;

  /// No description provided for @legalInfoNotice.
  ///
  /// In ca, this message translates to:
  /// **'BuildRank és un projecte acadèmic en fase MVP. Aquest text resumeix les condicions i criteris de privacitat aplicables a la demo i a l\'ús del prototip.'**
  String get legalInfoNotice;

  /// No description provided for @legalTermsSection1Title.
  ///
  /// In ca, this message translates to:
  /// **'1. Finalitat del servei'**
  String get legalTermsSection1Title;

  /// No description provided for @legalTermsSection1Body.
  ///
  /// In ca, this message translates to:
  /// **'BuildRank és una aplicació orientada a promoure un ús més responsable i sostenible de l\'energia en edificis residencials. Permet consultar informació d\'edificis, visualitzar indicadors, comparar resultats, simular millores i participar en funcionalitats comunitàries segons el rol de l\'usuari.'**
  String get legalTermsSection1Body;

  /// No description provided for @legalTermsSection2Title.
  ///
  /// In ca, this message translates to:
  /// **'2. Caràcter orientatiu de la informació'**
  String get legalTermsSection2Title;

  /// No description provided for @legalTermsSection2Body.
  ///
  /// In ca, this message translates to:
  /// **'Les puntuacions, rànquings, classificacions energètiques estimades, simulacions, Heat Risk Index i insígnies tenen finalitat informativa i orientativa. No constitueixen certificacions energètiques oficials, informes tècnics professionals ni recomanacions d\'enginyeria concloents.'**
  String get legalTermsSection2Body;

  /// No description provided for @legalTermsSection3Title.
  ///
  /// In ca, this message translates to:
  /// **'3. Ús responsable de l\'aplicació'**
  String get legalTermsSection3Title;

  /// No description provided for @legalTermsSection3Body.
  ///
  /// In ca, this message translates to:
  /// **'L\'usuari es compromet a utilitzar BuildRank de manera responsable, a no introduir dades falses o de tercers sense autorització i a respectar les normes de convivència en votacions, xats i espais comunitaris.'**
  String get legalTermsSection3Body;

  /// No description provided for @legalTermsSection4Title.
  ///
  /// In ca, this message translates to:
  /// **'4. Rols i permisos'**
  String get legalTermsSection4Title;

  /// No description provided for @legalTermsSection4Body.
  ///
  /// In ca, this message translates to:
  /// **'Les accions disponibles poden variar segons el rol de l\'usuari i la seva relació amb un edifici. Algunes accions, com gestionar edificis, validar sol·licituds, recalcular insígnies o administrar votacions, poden estar limitades a administradors autoritzats.'**
  String get legalTermsSection4Body;

  /// No description provided for @legalTermsSection5Title.
  ///
  /// In ca, this message translates to:
  /// **'5. Dades obertes, dades manuals i estimacions'**
  String get legalTermsSection5Title;

  /// No description provided for @legalTermsSection5Body.
  ///
  /// In ca, this message translates to:
  /// **'BuildRank pot combinar dades obertes, dades introduïdes manualment i resultats estimats. Quan una dada sigui incompleta, estimada o pendent de verificació, l\'aplicació intentarà indicar-ho de manera clara perquè l\'usuari pugui interpretar-la correctament.'**
  String get legalTermsSection5Body;

  /// No description provided for @legalTermsSection6Title.
  ///
  /// In ca, this message translates to:
  /// **'6. Revisió humana i fonts oficials'**
  String get legalTermsSection6Title;

  /// No description provided for @legalTermsSection6Body.
  ///
  /// In ca, this message translates to:
  /// **'En cas de discrepància sobre dades energètiques, documentació, titularitat o permisos, la revisió humana i les fonts oficials prevalen sobre qualsevol resultat automàtic o estimat mostrat pel sistema.'**
  String get legalTermsSection6Body;

  /// No description provided for @legalPrivacySection1Title.
  ///
  /// In ca, this message translates to:
  /// **'1. Dades tractades'**
  String get legalPrivacySection1Title;

  /// No description provided for @legalPrivacySection1Body.
  ///
  /// In ca, this message translates to:
  /// **'BuildRank pot tractar dades de compte, rol d\'usuari, edificis associats, habitatges vinculats, sol·licituds, votacions, simulacions, notificacions i accions de validació o administració.'**
  String get legalPrivacySection1Body;

  /// No description provided for @legalPrivacySection2Title.
  ///
  /// In ca, this message translates to:
  /// **'2. Finalitat del tractament'**
  String get legalPrivacySection2Title;

  /// No description provided for @legalPrivacySection2Body.
  ///
  /// In ca, this message translates to:
  /// **'Les dades es fan servir per autenticar usuaris, gestionar edificis, aplicar permisos, mostrar indicadors, facilitar participació comunitària, registrar accions sensibles i millorar la qualitat de les dades del sistema.'**
  String get legalPrivacySection2Body;

  /// No description provided for @legalPrivacySection3Title.
  ///
  /// In ca, this message translates to:
  /// **'3. Minimització de dades'**
  String get legalPrivacySection3Title;

  /// No description provided for @legalPrivacySection3Body.
  ///
  /// In ca, this message translates to:
  /// **'BuildRank intenta mostrar només la informació necessària per a cada funcionalitat. Per exemple, les vistes generals com el mapa no haurien d\'exposar emails, documents, habitatges o dades personals innecessàries.'**
  String get legalPrivacySection3Body;

  /// No description provided for @legalPrivacySection4Title.
  ///
  /// In ca, this message translates to:
  /// **'4. Documents i verificacions'**
  String get legalPrivacySection4Title;

  /// No description provided for @legalPrivacySection4Body.
  ///
  /// In ca, this message translates to:
  /// **'En processos de verificació, els documents aportats poden contenir informació sensible. Aquests fitxers s\'han d\'utilitzar només per revisar l\'evidència necessària i no per a finalitats alienes al procés de validació.'**
  String get legalPrivacySection4Body;

  /// No description provided for @legalPrivacySection5Title.
  ///
  /// In ca, this message translates to:
  /// **'5. Traçabilitat i auditoria'**
  String get legalPrivacySection5Title;

  /// No description provided for @legalPrivacySection5Body.
  ///
  /// In ca, this message translates to:
  /// **'Les accions sensibles poden quedar registrades amb finalitats de seguretat, auditoria i integritat del sistema. Aquesta traçabilitat ajuda a explicar canvis rellevants sobre permisos, validacions, edificis, votacions o puntuacions.'**
  String get legalPrivacySection5Body;

  /// No description provided for @legalPrivacySection6Title.
  ///
  /// In ca, this message translates to:
  /// **'6. Ús d\'IA i decisions automàtiques'**
  String get legalPrivacySection6Title;

  /// No description provided for @legalPrivacySection6Body.
  ///
  /// In ca, this message translates to:
  /// **'Qualsevol suport automatitzat o basat en IA, si existeix, s\'ha d\'entendre com una ajuda per detectar incoherències o punts de revisió. No substitueix la revisió humana ni hauria d\'aprovar documents, assignar rols o modificar puntuacions de manera autònoma.'**
  String get legalPrivacySection6Body;

  /// No description provided for @legalPrivacySection7Title.
  ///
  /// In ca, this message translates to:
  /// **'7. Responsabilitat de l\'usuari'**
  String get legalPrivacySection7Title;

  /// No description provided for @legalPrivacySection7Body.
  ///
  /// In ca, this message translates to:
  /// **'L\'usuari ha d\'evitar pujar informació innecessària o documents de tercers sense autorització. Les claus, tokens i credencials no s\'han de compartir ni introduir fora dels formularis previstos per l\'aplicació.'**
  String get legalPrivacySection7Body;

  /// No description provided for @accountBlockedTitle.
  ///
  /// In ca, this message translates to:
  /// **'Compte bloquejat'**
  String get accountBlockedTitle;

  /// No description provided for @accountBlockedBody.
  ///
  /// In ca, this message translates to:
  /// **'El teu compte ha estat bloquejat permanentment. Contacta amb l\'administrador per obtenir més informació.'**
  String get accountBlockedBody;

  /// No description provided for @accountSuspendedTitle.
  ///
  /// In ca, this message translates to:
  /// **'Compte suspès'**
  String get accountSuspendedTitle;

  /// No description provided for @accountSuspendedBody.
  ///
  /// In ca, this message translates to:
  /// **'El teu compte està suspès temporalment. Contacta amb l\'administrador per obtenir més informació.'**
  String get accountSuspendedBody;

  /// No description provided for @accountBackToLogin.
  ///
  /// In ca, this message translates to:
  /// **'Torna a l\'inici de sessió'**
  String get accountBackToLogin;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['ca', 'en', 'es'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ca':
      return AppLocalizationsCa();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
