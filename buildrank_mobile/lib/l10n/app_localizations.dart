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

  /// No description provided for @commonRetry.
  ///
  /// In ca, this message translates to:
  /// **'Torna-ho a provar'**
  String get commonRetry;

  /// No description provided for @commonCancel.
  ///
  /// In ca, this message translates to:
  /// **'Cancel·lar'**
  String get commonCancel;

  /// No description provided for @commonConfirm.
  ///
  /// In ca, this message translates to:
  /// **'Confirmar'**
  String get commonConfirm;

  /// No description provided for @commonBack.
  ///
  /// In ca, this message translates to:
  /// **'Torna'**
  String get commonBack;

  /// No description provided for @commonRefresh.
  ///
  /// In ca, this message translates to:
  /// **'Refrescar'**
  String get commonRefresh;

  /// No description provided for @commonErrorWithValue.
  ///
  /// In ca, this message translates to:
  /// **'Error: {error}'**
  String commonErrorWithValue(String error);

  /// No description provided for @adminUserManagementTitle.
  ///
  /// In ca, this message translates to:
  /// **'Gestió d\'usuaris'**
  String get adminUserManagementTitle;

  /// No description provided for @notificationsTitle.
  ///
  /// In ca, this message translates to:
  /// **'Notificacions'**
  String get notificationsTitle;

  /// No description provided for @notificationsMarkAll.
  ///
  /// In ca, this message translates to:
  /// **'Marcar totes'**
  String get notificationsMarkAll;

  /// No description provided for @notificationsLoadError.
  ///
  /// In ca, this message translates to:
  /// **'No s\'han pogut carregar les notificacions.'**
  String get notificationsLoadError;

  /// No description provided for @notificationsEmpty.
  ///
  /// In ca, this message translates to:
  /// **'No tens notificacions'**
  String get notificationsEmpty;

  /// No description provided for @notificationsNow.
  ///
  /// In ca, this message translates to:
  /// **'Ara mateix'**
  String get notificationsNow;

  /// No description provided for @notificationsMinutesAgo.
  ///
  /// In ca, this message translates to:
  /// **'Fa {count} min'**
  String notificationsMinutesAgo(int count);

  /// No description provided for @notificationsHoursAgo.
  ///
  /// In ca, this message translates to:
  /// **'Fa {count} h'**
  String notificationsHoursAgo(int count);

  /// No description provided for @notificationsDaysAgo.
  ///
  /// In ca, this message translates to:
  /// **'Fa {count} dies'**
  String notificationsDaysAgo(int count);

  /// No description provided for @myChatsTitle.
  ///
  /// In ca, this message translates to:
  /// **'Els meus xats'**
  String get myChatsTitle;

  /// No description provided for @myChatsConnectionError.
  ///
  /// In ca, this message translates to:
  /// **'No s\'ha pogut connectar al xat.'**
  String get myChatsConnectionError;

  /// No description provided for @myChatsReconnect.
  ///
  /// In ca, this message translates to:
  /// **'Reconnectar'**
  String get myChatsReconnect;

  /// No description provided for @myChatsNoMessages.
  ///
  /// In ca, this message translates to:
  /// **'Sense missatges'**
  String get myChatsNoMessages;

  /// No description provided for @myChatsEmpty.
  ///
  /// In ca, this message translates to:
  /// **'No tens cap xat actiu.'**
  String get myChatsEmpty;

  /// No description provided for @myChatsDirectDescription.
  ///
  /// In ca, this message translates to:
  /// **'Conversa directa o canal compartit entre administradors.'**
  String get myChatsDirectDescription;

  /// No description provided for @chatFallbackName.
  ///
  /// In ca, this message translates to:
  /// **'Xat'**
  String get chatFallbackName;

  /// No description provided for @chatDirectDescription.
  ///
  /// In ca, this message translates to:
  /// **'Conversa directa entre administradors de finca.'**
  String get chatDirectDescription;

  /// No description provided for @chatUserNotConnectedError.
  ///
  /// In ca, this message translates to:
  /// **'Usuari no connectat. Tanca sessió i torna a entrar.'**
  String get chatUserNotConnectedError;

  /// No description provided for @chatConnectionError.
  ///
  /// In ca, this message translates to:
  /// **'Error al connectar el xat:\n{error}'**
  String chatConnectionError(String error);

  /// No description provided for @homeRankingTitle.
  ///
  /// In ca, this message translates to:
  /// **'Rànquing'**
  String get homeRankingTitle;

  /// No description provided for @homeProfileTitle.
  ///
  /// In ca, this message translates to:
  /// **'Perfil'**
  String get homeProfileTitle;

  /// No description provided for @homeGreeting.
  ///
  /// In ca, this message translates to:
  /// **'Bon dia'**
  String get homeGreeting;

  /// No description provided for @homeSummaryTitle.
  ///
  /// In ca, this message translates to:
  /// **'Resum del teu edifici'**
  String get homeSummaryTitle;

  /// No description provided for @homeSummarySubtitle.
  ///
  /// In ca, this message translates to:
  /// **'Consulta l\'estat energètic actual, la teva posició a la lliga i les properes accions recomanades.'**
  String get homeSummarySubtitle;

  /// No description provided for @homeDemoBuildingName.
  ///
  /// In ca, this message translates to:
  /// **'Biblioteca Central'**
  String get homeDemoBuildingName;

  /// No description provided for @homeDemoBuildingSubtitle.
  ///
  /// In ca, this message translates to:
  /// **'Edifici monitoritzat aquesta setmana'**
  String get homeDemoBuildingSubtitle;

  /// No description provided for @homeMetricConsumption.
  ///
  /// In ca, this message translates to:
  /// **'Consum'**
  String get homeMetricConsumption;

  /// No description provided for @homeMetricPosition.
  ///
  /// In ca, this message translates to:
  /// **'Posició'**
  String get homeMetricPosition;

  /// No description provided for @homeMetricImprovement.
  ///
  /// In ca, this message translates to:
  /// **'Millora'**
  String get homeMetricImprovement;

  /// No description provided for @homeKeyIndicatorsTitle.
  ///
  /// In ca, this message translates to:
  /// **'Indicadors clau'**
  String get homeKeyIndicatorsTitle;

  /// No description provided for @homeTodayConsumptionTitle.
  ///
  /// In ca, this message translates to:
  /// **'Consum estimat d\'avui'**
  String get homeTodayConsumptionTitle;

  /// No description provided for @homeTodayConsumptionSubtitle.
  ///
  /// In ca, this message translates to:
  /// **'18 kWh · un 6% menys que ahir'**
  String get homeTodayConsumptionSubtitle;

  /// No description provided for @homeLeaguePositionTitle.
  ///
  /// In ca, this message translates to:
  /// **'Posició a la lliga'**
  String get homeLeaguePositionTitle;

  /// No description provided for @homeLeaguePositionSubtitle.
  ///
  /// In ca, this message translates to:
  /// **'3a posició de 12 edificis'**
  String get homeLeaguePositionSubtitle;

  /// No description provided for @homeRecommendationTitle.
  ///
  /// In ca, this message translates to:
  /// **'Recomanació principal'**
  String get homeRecommendationTitle;

  /// No description provided for @homeRecommendationSubtitle.
  ///
  /// In ca, this message translates to:
  /// **'Reduir la climatització a la tarda'**
  String get homeRecommendationSubtitle;

  /// No description provided for @homeQuickActionsTitle.
  ///
  /// In ca, this message translates to:
  /// **'Accions ràpides'**
  String get homeQuickActionsTitle;

  /// No description provided for @homeBuildingTitle.
  ///
  /// In ca, this message translates to:
  /// **'Edifici'**
  String get homeBuildingTitle;

  /// No description provided for @homeImprovementsTitle.
  ///
  /// In ca, this message translates to:
  /// **'Millores'**
  String get homeImprovementsTitle;

  /// No description provided for @homeCommunityTitle.
  ///
  /// In ca, this message translates to:
  /// **'Comunitat'**
  String get homeCommunityTitle;

  /// No description provided for @homeWeeklyGoalTitle.
  ///
  /// In ca, this message translates to:
  /// **'Objectiu setmanal'**
  String get homeWeeklyGoalTitle;

  /// No description provided for @homeWeeklyGoalBody.
  ///
  /// In ca, this message translates to:
  /// **'Manteniu el consum per sota de 130 kWh per consolidar-vos dins del top 3.'**
  String get homeWeeklyGoalBody;

  /// No description provided for @twinTitle.
  ///
  /// In ca, this message translates to:
  /// **'Twin Building'**
  String get twinTitle;

  /// No description provided for @twinIntroTitle.
  ///
  /// In ca, this message translates to:
  /// **'Administradors d\'edificis comparables'**
  String get twinIntroTitle;

  /// No description provided for @twinIntroBody.
  ///
  /// In ca, this message translates to:
  /// **'Contacta amb administradors de finca d\'edificis similars a {buildingName} per compartir experiències sobre millores energètiques, votacions i gestió comunitària.'**
  String twinIntroBody(String buildingName);

  /// No description provided for @twinEmptyTitle.
  ///
  /// In ca, this message translates to:
  /// **'No hi ha administradors comparables disponibles.'**
  String get twinEmptyTitle;

  /// No description provided for @twinEmptyBody.
  ///
  /// In ca, this message translates to:
  /// **'Pot ser que l\'edifici encara no tingui grup comparable o que no hi hagi altres edificis administrats dins del mateix grup.'**
  String get twinEmptyBody;

  /// No description provided for @twinChannelName.
  ///
  /// In ca, this message translates to:
  /// **'Twin Building amb {address}'**
  String twinChannelName(String address);

  /// No description provided for @twinChannelDescription.
  ///
  /// In ca, this message translates to:
  /// **'Conversa amb {adminName}, administrador de {address}.'**
  String twinChannelDescription(String adminName, String address);

  /// No description provided for @twinPoints.
  ///
  /// In ca, this message translates to:
  /// **'{points} pts'**
  String twinPoints(String points);

  /// No description provided for @twinTypologyFallback.
  ///
  /// In ca, this message translates to:
  /// **'Tipologia'**
  String get twinTypologyFallback;

  /// No description provided for @twinClimateZone.
  ///
  /// In ca, this message translates to:
  /// **'Zona {zone}'**
  String twinClimateZone(String zone);

  /// No description provided for @twinAdminLine.
  ///
  /// In ca, this message translates to:
  /// **'Admin: {adminName}'**
  String twinAdminLine(String adminName);

  /// No description provided for @twinOpenChat.
  ///
  /// In ca, this message translates to:
  /// **'Obrir xat'**
  String get twinOpenChat;

  /// No description provided for @editProfileTitle.
  ///
  /// In ca, this message translates to:
  /// **'Editar perfil'**
  String get editProfileTitle;

  /// No description provided for @editProfilePersonalDataTitle.
  ///
  /// In ca, this message translates to:
  /// **'Dades personals'**
  String get editProfilePersonalDataTitle;

  /// No description provided for @editProfilePersonalDataSubtitle.
  ///
  /// In ca, this message translates to:
  /// **'Actualitza la informació bàsica del teu compte. El rol no es pot modificar des d\'aquesta pantalla.'**
  String get editProfilePersonalDataSubtitle;

  /// No description provided for @editProfileRoleLabel.
  ///
  /// In ca, this message translates to:
  /// **'Rol'**
  String get editProfileRoleLabel;

  /// No description provided for @editProfileSaving.
  ///
  /// In ca, this message translates to:
  /// **'Desant...'**
  String get editProfileSaving;

  /// No description provided for @editProfileSaveChanges.
  ///
  /// In ca, this message translates to:
  /// **'Guardar canvis'**
  String get editProfileSaveChanges;

  /// No description provided for @editProfileFirstNameRequired.
  ///
  /// In ca, this message translates to:
  /// **'El nom és obligatori.'**
  String get editProfileFirstNameRequired;

  /// No description provided for @editProfileLastNameRequired.
  ///
  /// In ca, this message translates to:
  /// **'Els cognoms són obligatoris.'**
  String get editProfileLastNameRequired;

  /// No description provided for @editProfileEmailRequired.
  ///
  /// In ca, this message translates to:
  /// **'El correu electrònic és obligatori.'**
  String get editProfileEmailRequired;

  /// No description provided for @editProfileEmailInvalid.
  ///
  /// In ca, this message translates to:
  /// **'Introdueix un correu electrònic vàlid.'**
  String get editProfileEmailInvalid;

  /// No description provided for @editProfileSuccess.
  ///
  /// In ca, this message translates to:
  /// **'Perfil actualitzat correctament.'**
  String get editProfileSuccess;

  /// No description provided for @votesCreateTitle.
  ///
  /// In ca, this message translates to:
  /// **'Nova votació'**
  String get votesCreateTitle;

  /// No description provided for @votesCreateAction.
  ///
  /// In ca, this message translates to:
  /// **'Crear'**
  String get votesCreateAction;

  /// No description provided for @votesTitleLabel.
  ///
  /// In ca, this message translates to:
  /// **'Títol'**
  String get votesTitleLabel;

  /// No description provided for @votesTitleHint.
  ///
  /// In ca, this message translates to:
  /// **'Escriu el títol de la votació'**
  String get votesTitleHint;

  /// No description provided for @votesTitleRequiredError.
  ///
  /// In ca, this message translates to:
  /// **'El títol és obligatori.'**
  String get votesTitleRequiredError;

  /// No description provided for @votesTitleMinLengthError.
  ///
  /// In ca, this message translates to:
  /// **'El títol ha de tenir almenys 4 caràcters.'**
  String get votesTitleMinLengthError;

  /// No description provided for @votesDescriptionOptionalLabel.
  ///
  /// In ca, this message translates to:
  /// **'Descripció (opcional)'**
  String get votesDescriptionOptionalLabel;

  /// No description provided for @votesDescriptionHint.
  ///
  /// In ca, this message translates to:
  /// **'Explica el context de la votació...'**
  String get votesDescriptionHint;

  /// No description provided for @votesDeadlineOptionalLabel.
  ///
  /// In ca, this message translates to:
  /// **'Data límit (opcional)'**
  String get votesDeadlineOptionalLabel;

  /// No description provided for @votesNoDeadline.
  ///
  /// In ca, this message translates to:
  /// **'Sense data límit'**
  String get votesNoDeadline;

  /// No description provided for @votesOptionsLabel.
  ///
  /// In ca, this message translates to:
  /// **'Opcions'**
  String get votesOptionsLabel;

  /// No description provided for @votesOptionsLimitHint.
  ///
  /// In ca, this message translates to:
  /// **'Mínim 2 · Màxim 8'**
  String get votesOptionsLimitHint;

  /// No description provided for @votesAddOption.
  ///
  /// In ca, this message translates to:
  /// **'Afegir opció'**
  String get votesAddOption;

  /// No description provided for @votesOptionHint.
  ///
  /// In ca, this message translates to:
  /// **'Opció {number}'**
  String votesOptionHint(int number);

  /// No description provided for @votesOptionRequiredError.
  ///
  /// In ca, this message translates to:
  /// **'Aquesta opció no pot estar buida.'**
  String get votesOptionRequiredError;

  /// No description provided for @votesDuplicateOptionsError.
  ///
  /// In ca, this message translates to:
  /// **'Hi ha opcions duplicades. Revisa-les.'**
  String get votesDuplicateOptionsError;

  /// No description provided for @pendingRequestsTitle.
  ///
  /// In ca, this message translates to:
  /// **'Sol·licituds pendents'**
  String get pendingRequestsTitle;

  /// No description provided for @pendingRequestsIntro.
  ///
  /// In ca, this message translates to:
  /// **'Aquí pots revisar i validar les sol·licituds d\'unió com a resident per a {buildingTitle}.'**
  String pendingRequestsIntro(String buildingTitle);

  /// No description provided for @pendingRequestsCount.
  ///
  /// In ca, this message translates to:
  /// **'{count} pendents'**
  String pendingRequestsCount(int count);

  /// No description provided for @pendingRequestsEmptyTitle.
  ///
  /// In ca, this message translates to:
  /// **'No hi ha sol·licituds pendents'**
  String get pendingRequestsEmptyTitle;

  /// No description provided for @pendingRequestsEmptyBody.
  ///
  /// In ca, this message translates to:
  /// **'Quan altres usuaris demanin unir-se a aquest edifici, apareixeran aquí.'**
  String get pendingRequestsEmptyBody;

  /// No description provided for @pendingRequestsUnexpectedError.
  ///
  /// In ca, this message translates to:
  /// **'S\'ha produït un error inesperat.'**
  String get pendingRequestsUnexpectedError;

  /// No description provided for @pendingRequestsForbidden.
  ///
  /// In ca, this message translates to:
  /// **'Només l\'administrador de finca pot gestionar les sol·licituds pendents.'**
  String get pendingRequestsForbidden;

  /// No description provided for @pendingRequestsAccepted.
  ///
  /// In ca, this message translates to:
  /// **'S\'ha acceptat la sol·licitud de {name}.'**
  String pendingRequestsAccepted(String name);

  /// No description provided for @pendingRequestsRejected.
  ///
  /// In ca, this message translates to:
  /// **'S\'ha rebutjat la sol·licitud de {name}.'**
  String pendingRequestsRejected(String name);

  /// No description provided for @pendingRequestsResidentChip.
  ///
  /// In ca, this message translates to:
  /// **'Resident'**
  String get pendingRequestsResidentChip;

  /// No description provided for @pendingRequestsRequestTypeLabel.
  ///
  /// In ca, this message translates to:
  /// **'Tipus de sol·licitud'**
  String get pendingRequestsRequestTypeLabel;

  /// No description provided for @pendingRequestsResidentJoinType.
  ///
  /// In ca, this message translates to:
  /// **'Unió com a resident'**
  String get pendingRequestsResidentJoinType;

  /// No description provided for @pendingRequestsDateLabel.
  ///
  /// In ca, this message translates to:
  /// **'Data'**
  String get pendingRequestsDateLabel;

  /// No description provided for @pendingRequestsCadastralReferenceLabel.
  ///
  /// In ca, this message translates to:
  /// **'Referència cadastral'**
  String get pendingRequestsCadastralReferenceLabel;

  /// No description provided for @pendingRequestsHomeLabel.
  ///
  /// In ca, this message translates to:
  /// **'Habitatge'**
  String get pendingRequestsHomeLabel;

  /// No description provided for @pendingRequestsSurfaceLabel.
  ///
  /// In ca, this message translates to:
  /// **'Superfície'**
  String get pendingRequestsSurfaceLabel;

  /// No description provided for @pendingRequestsReject.
  ///
  /// In ca, this message translates to:
  /// **'Rebutjar'**
  String get pendingRequestsReject;

  /// No description provided for @pendingRequestsAccept.
  ///
  /// In ca, this message translates to:
  /// **'Acceptar'**
  String get pendingRequestsAccept;

  /// No description provided for @pendingRequestsNotSpecified.
  ///
  /// In ca, this message translates to:
  /// **'No especificat'**
  String get pendingRequestsNotSpecified;

  /// No description provided for @pendingRequestsFloorDoor.
  ///
  /// In ca, this message translates to:
  /// **'Planta {floor} · Porta {door}'**
  String pendingRequestsFloorDoor(String floor, String door);

  /// No description provided for @pendingRequestsFloor.
  ///
  /// In ca, this message translates to:
  /// **'Planta {floor}'**
  String pendingRequestsFloor(String floor);

  /// No description provided for @pendingRequestsDoor.
  ///
  /// In ca, this message translates to:
  /// **'Porta {door}'**
  String pendingRequestsDoor(String door);

  /// No description provided for @chatReasonOptionalHint.
  ///
  /// In ca, this message translates to:
  /// **'Motiu (opcional)'**
  String get chatReasonOptionalHint;

  /// No description provided for @chatConfirmActionTitle.
  ///
  /// In ca, this message translates to:
  /// **'Confirmar acció'**
  String get chatConfirmActionTitle;

  /// No description provided for @chatDurationLabel.
  ///
  /// In ca, this message translates to:
  /// **'Durada'**
  String get chatDurationLabel;

  /// No description provided for @chatDurationIndefinite.
  ///
  /// In ca, this message translates to:
  /// **'Indefinit'**
  String get chatDurationIndefinite;

  /// No description provided for @chatDuration30Minutes.
  ///
  /// In ca, this message translates to:
  /// **'30 minuts'**
  String get chatDuration30Minutes;

  /// No description provided for @chatDuration1Hour.
  ///
  /// In ca, this message translates to:
  /// **'1 hora'**
  String get chatDuration1Hour;

  /// No description provided for @chatDuration6Hours.
  ///
  /// In ca, this message translates to:
  /// **'6 hores'**
  String get chatDuration6Hours;

  /// No description provided for @chatDuration24Hours.
  ///
  /// In ca, this message translates to:
  /// **'24 hores'**
  String get chatDuration24Hours;

  /// No description provided for @chatReportMessage.
  ///
  /// In ca, this message translates to:
  /// **'Reportar missatge'**
  String get chatReportMessage;

  /// No description provided for @chatHideMessage.
  ///
  /// In ca, this message translates to:
  /// **'Ocultar missatge'**
  String get chatHideMessage;

  /// No description provided for @chatDeleteMyMessage.
  ///
  /// In ca, this message translates to:
  /// **'Eliminar el meu missatge'**
  String get chatDeleteMyMessage;

  /// No description provided for @chatDeleteMessage.
  ///
  /// In ca, this message translates to:
  /// **'Eliminar missatge'**
  String get chatDeleteMessage;

  /// No description provided for @chatRestoreMessage.
  ///
  /// In ca, this message translates to:
  /// **'Restaurar missatge'**
  String get chatRestoreMessage;

  /// No description provided for @chatDismissReport.
  ///
  /// In ca, this message translates to:
  /// **'Desestimar report'**
  String get chatDismissReport;

  /// No description provided for @chatDeleteOwnMessageConfirm.
  ///
  /// In ca, this message translates to:
  /// **'Segur que vols eliminar el teu missatge?'**
  String get chatDeleteOwnMessageConfirm;

  /// No description provided for @chatDeleteOtherMessageConfirm.
  ///
  /// In ca, this message translates to:
  /// **'Eliminar el missatge d\'aquest usuari?'**
  String get chatDeleteOtherMessageConfirm;

  /// No description provided for @chatMessageReported.
  ///
  /// In ca, this message translates to:
  /// **'Missatge reportat.'**
  String get chatMessageReported;

  /// No description provided for @chatMessageHidden.
  ///
  /// In ca, this message translates to:
  /// **'Missatge ocult.'**
  String get chatMessageHidden;

  /// No description provided for @chatMessageDeleted.
  ///
  /// In ca, this message translates to:
  /// **'Missatge eliminat.'**
  String get chatMessageDeleted;

  /// No description provided for @chatMessageRestored.
  ///
  /// In ca, this message translates to:
  /// **'Missatge restaurat.'**
  String get chatMessageRestored;

  /// No description provided for @chatReportDismissed.
  ///
  /// In ca, this message translates to:
  /// **'Report desestimat.'**
  String get chatReportDismissed;

  /// No description provided for @chatWarnUser.
  ///
  /// In ca, this message translates to:
  /// **'Advertir usuari'**
  String get chatWarnUser;

  /// No description provided for @chatMuteUser.
  ///
  /// In ca, this message translates to:
  /// **'Silenciar usuari'**
  String get chatMuteUser;

  /// No description provided for @chatBanFromChannel.
  ///
  /// In ca, this message translates to:
  /// **'Expulsar del canal'**
  String get chatBanFromChannel;

  /// No description provided for @chatGlobalBan.
  ///
  /// In ca, this message translates to:
  /// **'Expulsió global'**
  String get chatGlobalBan;

  /// No description provided for @chatShadowBan.
  ///
  /// In ca, this message translates to:
  /// **'Shadow ban'**
  String get chatShadowBan;

  /// No description provided for @chatWarn.
  ///
  /// In ca, this message translates to:
  /// **'Advertir'**
  String get chatWarn;

  /// No description provided for @chatMute.
  ///
  /// In ca, this message translates to:
  /// **'Silenciar'**
  String get chatMute;

  /// No description provided for @chatUnmute.
  ///
  /// In ca, this message translates to:
  /// **'Dessilenciar'**
  String get chatUnmute;

  /// No description provided for @chatReadmitToChannel.
  ///
  /// In ca, this message translates to:
  /// **'Readmetre al canal'**
  String get chatReadmitToChannel;

  /// No description provided for @chatLiftGlobalBan.
  ///
  /// In ca, this message translates to:
  /// **'Aixecar expulsió global'**
  String get chatLiftGlobalBan;

  /// No description provided for @chatLiftShadowBan.
  ///
  /// In ca, this message translates to:
  /// **'Aixecar shadow ban'**
  String get chatLiftShadowBan;

  /// No description provided for @chatWarningSent.
  ///
  /// In ca, this message translates to:
  /// **'Advertència enviada.'**
  String get chatWarningSent;

  /// No description provided for @chatUserMuted.
  ///
  /// In ca, this message translates to:
  /// **'Usuari silenciat.'**
  String get chatUserMuted;

  /// No description provided for @chatUserUnmuted.
  ///
  /// In ca, this message translates to:
  /// **'Usuari dessilenciat.'**
  String get chatUserUnmuted;

  /// No description provided for @chatUserBannedFromChannel.
  ///
  /// In ca, this message translates to:
  /// **'Usuari expulsat del canal.'**
  String get chatUserBannedFromChannel;

  /// No description provided for @chatUserUnbannedFromChannel.
  ///
  /// In ca, this message translates to:
  /// **'Usuari readmès al canal.'**
  String get chatUserUnbannedFromChannel;

  /// No description provided for @chatUserGloballyBanned.
  ///
  /// In ca, this message translates to:
  /// **'Usuari expulsat globalment.'**
  String get chatUserGloballyBanned;

  /// No description provided for @chatGlobalUnbanConfirm.
  ///
  /// In ca, this message translates to:
  /// **'Aixecar l\'expulsió global d\'aquest usuari?'**
  String get chatGlobalUnbanConfirm;

  /// No description provided for @chatGlobalBanLifted.
  ///
  /// In ca, this message translates to:
  /// **'Expulsió global aixecada.'**
  String get chatGlobalBanLifted;

  /// No description provided for @chatShadowBanApplied.
  ///
  /// In ca, this message translates to:
  /// **'Shadow ban aplicat.'**
  String get chatShadowBanApplied;

  /// No description provided for @chatShadowUnbanConfirm.
  ///
  /// In ca, this message translates to:
  /// **'Aixecar el shadow ban d\'aquest usuari?'**
  String get chatShadowUnbanConfirm;

  /// No description provided for @chatShadowBanLifted.
  ///
  /// In ca, this message translates to:
  /// **'Shadow ban aixecat.'**
  String get chatShadowBanLifted;

  /// No description provided for @chatCommunityTitle.
  ///
  /// In ca, this message translates to:
  /// **'Comunitat de {buildingName}'**
  String chatCommunityTitle(String buildingName);

  /// No description provided for @chatCommunitySubtitle.
  ///
  /// In ca, this message translates to:
  /// **'Parla amb els membres d\'aquest edifici sobre millores, incidències i propostes.'**
  String get chatCommunitySubtitle;

  /// No description provided for @chatContactSimilarAdmins.
  ///
  /// In ca, this message translates to:
  /// **'Contactar admins similars'**
  String get chatContactSimilarAdmins;

  /// No description provided for @mapTitle.
  ///
  /// In ca, this message translates to:
  /// **'Mapa d\'edificis'**
  String get mapTitle;

  /// No description provided for @mapSearchHint.
  ///
  /// In ca, this message translates to:
  /// **'Cerca per carrer, barri o codi postal'**
  String get mapSearchHint;

  /// No description provided for @mapSearchTooltip.
  ///
  /// In ca, this message translates to:
  /// **'Cercar'**
  String get mapSearchTooltip;

  /// No description provided for @mapFilterAll.
  ///
  /// In ca, this message translates to:
  /// **'Tots'**
  String get mapFilterAll;

  /// No description provided for @mapFilterMinScore.
  ///
  /// In ca, this message translates to:
  /// **'≥ {score}'**
  String mapFilterMinScore(int score);

  /// No description provided for @mapNoValidCoordinates.
  ///
  /// In ca, this message translates to:
  /// **'No hi ha edificis amb coordenades vàlides per mostrar.'**
  String get mapNoValidCoordinates;

  /// No description provided for @mapShownOfCount.
  ///
  /// In ca, this message translates to:
  /// **'{shown} de {count} edificis mostrats'**
  String mapShownOfCount(int shown, int count);

  /// No description provided for @mapShownCount.
  ///
  /// In ca, this message translates to:
  /// **'{shown} edificis al mapa'**
  String mapShownCount(int shown);

  /// No description provided for @mapLoadError.
  ///
  /// In ca, this message translates to:
  /// **'No s\'ha pogut carregar el mapa.'**
  String get mapLoadError;

  /// No description provided for @profileUserFallback.
  ///
  /// In ca, this message translates to:
  /// **'Usuari'**
  String get profileUserFallback;

  /// No description provided for @profileRoleAdmin.
  ///
  /// In ca, this message translates to:
  /// **'Administrador de finca'**
  String get profileRoleAdmin;

  /// No description provided for @profileRoleOwner.
  ///
  /// In ca, this message translates to:
  /// **'Propietari'**
  String get profileRoleOwner;

  /// No description provided for @profileRoleTenant.
  ///
  /// In ca, this message translates to:
  /// **'Llogater'**
  String get profileRoleTenant;

  /// No description provided for @profileAdminBuildingsTitle.
  ///
  /// In ca, this message translates to:
  /// **'Edificis administrats'**
  String get profileAdminBuildingsTitle;

  /// No description provided for @profileOwnerBuildingsTitle.
  ///
  /// In ca, this message translates to:
  /// **'Edificis dels meus habitatges'**
  String get profileOwnerBuildingsTitle;

  /// No description provided for @profileTenantBuildingsTitle.
  ///
  /// In ca, this message translates to:
  /// **'Edificis vinculats'**
  String get profileTenantBuildingsTitle;

  /// No description provided for @profileAccessibleBuildingsTitle.
  ///
  /// In ca, this message translates to:
  /// **'Edificis accessibles'**
  String get profileAccessibleBuildingsTitle;

  /// No description provided for @profileEmptyAdminBuildings.
  ///
  /// In ca, this message translates to:
  /// **'Encara no tens cap edifici assignat com a administrador de finca. Pots crear-ne un amb el formulari d\'alta.'**
  String get profileEmptyAdminBuildings;

  /// No description provided for @profileEmptyOwnerBuildings.
  ///
  /// In ca, this message translates to:
  /// **'Encara no tens habitatges vinculats al teu compte. Quan un administrador t\'assigni un habitatge, aquí veuràs l\'edifici corresponent.'**
  String get profileEmptyOwnerBuildings;

  /// No description provided for @profileEmptyTenantBuildings.
  ///
  /// In ca, this message translates to:
  /// **'Encara no tens cap habitatge vinculat al teu compte. Quan siguis assignat a un habitatge, aquí veuràs l\'edifici corresponent.'**
  String get profileEmptyTenantBuildings;

  /// No description provided for @profileEmptyAccessibleBuildings.
  ///
  /// In ca, this message translates to:
  /// **'Encara no hi ha edificis disponibles per a aquest compte.'**
  String get profileEmptyAccessibleBuildings;

  /// No description provided for @profileBuildingCreated.
  ///
  /// In ca, this message translates to:
  /// **'Edifici creat correctament.'**
  String get profileBuildingCreated;

  /// No description provided for @profileLogoutTooltip.
  ///
  /// In ca, this message translates to:
  /// **'Tancar sessió'**
  String get profileLogoutTooltip;

  /// No description provided for @profileReportsSoon.
  ///
  /// In ca, this message translates to:
  /// **'Els informes per a juntes encara no estan disponibles en aquest MVP.'**
  String get profileReportsSoon;

  /// No description provided for @profileCreateBuilding.
  ///
  /// In ca, this message translates to:
  /// **'Crear edifici'**
  String get profileCreateBuilding;

  /// No description provided for @profileReports.
  ///
  /// In ca, this message translates to:
  /// **'Informes'**
  String get profileReports;

  /// No description provided for @profileNonAdminInfo.
  ///
  /// In ca, this message translates to:
  /// **'Aquest compte pot consultar els edificis vinculats als seus habitatges. La creació i administració d\'edificis queda reservada als administradors de finca.'**
  String get profileNonAdminInfo;

  /// No description provided for @profileMapSubtitle.
  ///
  /// In ca, this message translates to:
  /// **'Visualitza els edificis registrats i consulta\'n les estadístiques principals.'**
  String get profileMapSubtitle;

  /// No description provided for @profileLinkNewBuilding.
  ///
  /// In ca, this message translates to:
  /// **'Vincular nou edifici'**
  String get profileLinkNewBuilding;

  /// No description provided for @profileLoadError.
  ///
  /// In ca, this message translates to:
  /// **'No s\'ha pogut carregar el perfil.'**
  String get profileLoadError;

  /// No description provided for @profileMetricBuildings.
  ///
  /// In ca, this message translates to:
  /// **'EDIFICIS'**
  String get profileMetricBuildings;

  /// No description provided for @profileMetricLinks.
  ///
  /// In ca, this message translates to:
  /// **'VINCLES'**
  String get profileMetricLinks;

  /// No description provided for @profileMetricAvgRanking.
  ///
  /// In ca, this message translates to:
  /// **'RÀNQUING MITJÀ'**
  String get profileMetricAvgRanking;

  /// No description provided for @profileMetricProgress.
  ///
  /// In ca, this message translates to:
  /// **'PROGRÉS'**
  String get profileMetricProgress;

  /// No description provided for @profileSeasonRestart.
  ///
  /// In ca, this message translates to:
  /// **'Proper reinici de temporada'**
  String get profileSeasonRestart;

  /// No description provided for @profileSeasonDaysLeft.
  ///
  /// In ca, this message translates to:
  /// **'Queden {days} dies'**
  String profileSeasonDaysLeft(int days);

  /// No description provided for @profileBadgesTitle.
  ///
  /// In ca, this message translates to:
  /// **'Insígnies d\'edificis'**
  String get profileBadgesTitle;

  /// No description provided for @profileBadgesBody.
  ///
  /// In ca, this message translates to:
  /// **'Les insígnies reals es mostren dins de la fitxa de cada edifici. Quan un edifici compleixi criteris de puntuació, qualitat de dades o millora, apareixeran en el seu detall.'**
  String get profileBadgesBody;

  /// No description provided for @profileBuildingNumber.
  ///
  /// In ca, this message translates to:
  /// **'Edifici #{id}'**
  String profileBuildingNumber(int id);

  /// No description provided for @profileLocationUnavailable.
  ///
  /// In ca, this message translates to:
  /// **'Localització no disponible'**
  String get profileLocationUnavailable;

  /// No description provided for @profileInactive.
  ///
  /// In ca, this message translates to:
  /// **'Inactiu'**
  String get profileInactive;

  /// No description provided for @profileActive.
  ///
  /// In ca, this message translates to:
  /// **'Actiu'**
  String get profileActive;

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

  /// No description provided for @appName.
  ///
  /// In ca, this message translates to:
  /// **'BuildRank'**
  String get appName;

  /// No description provided for @commonUnavailable.
  ///
  /// In ca, this message translates to:
  /// **'No disponible'**
  String get commonUnavailable;

  /// No description provided for @commonUnknownError.
  ///
  /// In ca, this message translates to:
  /// **'Error desconegut.'**
  String get commonUnknownError;

  /// No description provided for @commonRequiredField.
  ///
  /// In ca, this message translates to:
  /// **'Camp obligatori'**
  String get commonRequiredField;

  /// No description provided for @commonInvalidNumber.
  ///
  /// In ca, this message translates to:
  /// **'Introdueix un número vàlid'**
  String get commonInvalidNumber;

  /// No description provided for @commonGreaterThanZero.
  ///
  /// In ca, this message translates to:
  /// **'Ha de ser superior a 0'**
  String get commonGreaterThanZero;

  /// No description provided for @commonContinue.
  ///
  /// In ca, this message translates to:
  /// **'Continua →'**
  String get commonContinue;

  /// No description provided for @mainNavHome.
  ///
  /// In ca, this message translates to:
  /// **'Inici'**
  String get mainNavHome;

  /// No description provided for @mainNavLeagues.
  ///
  /// In ca, this message translates to:
  /// **'Lligues'**
  String get mainNavLeagues;

  /// No description provided for @mainNavSimulate.
  ///
  /// In ca, this message translates to:
  /// **'Simula'**
  String get mainNavSimulate;

  /// No description provided for @mainNavChat.
  ///
  /// In ca, this message translates to:
  /// **'Xat'**
  String get mainNavChat;

  /// No description provided for @mainNavVotes.
  ///
  /// In ca, this message translates to:
  /// **'Votacions'**
  String get mainNavVotes;

  /// No description provided for @habitatgeCadastralReference.
  ///
  /// In ca, this message translates to:
  /// **'Referència cadastral'**
  String get habitatgeCadastralReference;

  /// No description provided for @habitatgeFloor.
  ///
  /// In ca, this message translates to:
  /// **'Planta'**
  String get habitatgeFloor;

  /// No description provided for @habitatgeDoor.
  ///
  /// In ca, this message translates to:
  /// **'Porta'**
  String get habitatgeDoor;

  /// No description provided for @habitatgeSurface.
  ///
  /// In ca, this message translates to:
  /// **'Superfície (m²)'**
  String get habitatgeSurface;

  /// No description provided for @addExistingAppBarTitle.
  ///
  /// In ca, this message translates to:
  /// **'Vincular edifici'**
  String get addExistingAppBarTitle;

  /// No description provided for @addExistingTitle.
  ///
  /// In ca, this message translates to:
  /// **'Vincula\'t a un edifici ja existent'**
  String get addExistingTitle;

  /// No description provided for @addExistingAdminSubtitle.
  ///
  /// In ca, this message translates to:
  /// **'Quan seleccionis un edifici, s\'enviarà una sol·licitud per vincular-te com a administrador de finca.'**
  String get addExistingAdminSubtitle;

  /// No description provided for @addExistingResidentSubtitle.
  ///
  /// In ca, this message translates to:
  /// **'Quan seleccionis un edifici, s\'enviarà una sol·licitud d\'unió a l\'administrador de finca perquè et pugui validar com a resident.'**
  String get addExistingResidentSubtitle;

  /// No description provided for @addExistingLocationSection.
  ///
  /// In ca, this message translates to:
  /// **'Localització'**
  String get addExistingLocationSection;

  /// No description provided for @addExistingSearchHint.
  ///
  /// In ca, this message translates to:
  /// **'Escriu el carrer del teu edifici...'**
  String get addExistingSearchHint;

  /// No description provided for @addExistingMinSearch.
  ///
  /// In ca, this message translates to:
  /// **'Introdueix almenys 3 caràcters per començar la cerca.'**
  String get addExistingMinSearch;

  /// No description provided for @addExistingResultsTitle.
  ///
  /// In ca, this message translates to:
  /// **'Resultats'**
  String get addExistingResultsTitle;

  /// No description provided for @addExistingNoResults.
  ///
  /// In ca, this message translates to:
  /// **'No s\'ha trobat cap edifici amb aquesta adreça.'**
  String get addExistingNoResults;

  /// No description provided for @addExistingSelectedBuilding.
  ///
  /// In ca, this message translates to:
  /// **'Seleccionat: {buildingName} · Rol sol·licitat: {role}'**
  String addExistingSelectedBuilding(String buildingName, String role);

  /// No description provided for @addExistingClosedRequests.
  ///
  /// In ca, this message translates to:
  /// **'Aquest edifici no admet noves sol·licituds d’unió en aquest moment.'**
  String get addExistingClosedRequests;

  /// No description provided for @addExistingHabitatgeTitle.
  ///
  /// In ca, this message translates to:
  /// **'Dades de l’habitatge'**
  String get addExistingHabitatgeTitle;

  /// No description provided for @addExistingHabitatgeSubtitle.
  ///
  /// In ca, this message translates to:
  /// **'Completa les dades del teu habitatge per enviar la sol·licitud d’unió.'**
  String get addExistingHabitatgeSubtitle;

  /// No description provided for @addExistingSubmit.
  ///
  /// In ca, this message translates to:
  /// **'Enviar sol·licitud'**
  String get addExistingSubmit;

  /// No description provided for @addExistingAdminRequestSent.
  ///
  /// In ca, this message translates to:
  /// **'S\'ha enviat la sol·licitud per vincular-te com a administrador de finca.'**
  String get addExistingAdminRequestSent;

  /// No description provided for @addExistingResidentRequestSent.
  ///
  /// In ca, this message translates to:
  /// **'S\'ha enviat la sol·licitud d\'unió a l\'administrador de finca.'**
  String get addExistingResidentRequestSent;

  /// No description provided for @rankingLoadError.
  ///
  /// In ca, this message translates to:
  /// **'No s’ha pogut carregar el rànquing.'**
  String get rankingLoadError;

  /// No description provided for @rankingLoadMoreError.
  ///
  /// In ca, this message translates to:
  /// **'No s’han pogut carregar més competidors.'**
  String get rankingLoadMoreError;

  /// No description provided for @rankingProgressLoadError.
  ///
  /// In ca, this message translates to:
  /// **'No s’ha pogut carregar l’evolució de progrés.'**
  String get rankingProgressLoadError;

  /// No description provided for @rankingScopeLeague.
  ///
  /// In ca, this message translates to:
  /// **'La meva lliga'**
  String get rankingScopeLeague;

  /// No description provided for @rankingScopeComparableLeague.
  ///
  /// In ca, this message translates to:
  /// **'Similars lliga'**
  String get rankingScopeComparableLeague;

  /// No description provided for @rankingScopeComparableSeason.
  ///
  /// In ca, this message translates to:
  /// **'Similars temporada'**
  String get rankingScopeComparableSeason;

  /// No description provided for @rankingUnavailableTitle.
  ///
  /// In ca, this message translates to:
  /// **'Rànquing no disponible'**
  String get rankingUnavailableTitle;

  /// No description provided for @rankingLoadErrorTitle.
  ///
  /// In ca, this message translates to:
  /// **'No s’ha pogut carregar el rànquing'**
  String get rankingLoadErrorTitle;

  /// No description provided for @rankingActiveSeason.
  ///
  /// In ca, this message translates to:
  /// **'Temporada activa: {seasonName}'**
  String rankingActiveSeason(String seasonName);

  /// No description provided for @rankingProgressToTop.
  ///
  /// In ca, this message translates to:
  /// **'Progrés cap al Top {target}'**
  String rankingProgressToTop(int target);

  /// No description provided for @rankingPointsProgress.
  ///
  /// In ca, this message translates to:
  /// **'{currentPoints} / {targetPoints} punts'**
  String rankingPointsProgress(String currentPoints, String targetPoints);

  /// No description provided for @rankingSeasonPendingCalendar.
  ///
  /// In ca, this message translates to:
  /// **'Temporada pendent de calendari.'**
  String get rankingSeasonPendingCalendar;

  /// No description provided for @rankingCurrentPosition.
  ///
  /// In ca, this message translates to:
  /// **'Posició actual: #{position}'**
  String rankingCurrentPosition(int position);

  /// No description provided for @rankingComparisonPeriod.
  ///
  /// In ca, this message translates to:
  /// **'Període de comparació'**
  String get rankingComparisonPeriod;

  /// No description provided for @rankingLastSeasons.
  ///
  /// In ca, this message translates to:
  /// **'Últimes {count}'**
  String rankingLastSeasons(int count);

  /// No description provided for @rankingTopTarget.
  ///
  /// In ca, this message translates to:
  /// **'Top {target}'**
  String rankingTopTarget(int target);

  /// No description provided for @rankingBadgesEarned.
  ///
  /// In ca, this message translates to:
  /// **'Insígnies aconseguides'**
  String get rankingBadgesEarned;

  /// No description provided for @rankingViewAll.
  ///
  /// In ca, this message translates to:
  /// **'Veure-ho tot'**
  String get rankingViewAll;

  /// No description provided for @rankingBadgeSolarMaster.
  ///
  /// In ca, this message translates to:
  /// **'Mestre solar'**
  String get rankingBadgeSolarMaster;

  /// No description provided for @rankingBadgeDateOct25.
  ///
  /// In ca, this message translates to:
  /// **'Oct 25'**
  String get rankingBadgeDateOct25;

  /// No description provided for @rankingBadgeMaxSavings.
  ///
  /// In ca, this message translates to:
  /// **'Màxim estalvi'**
  String get rankingBadgeMaxSavings;

  /// No description provided for @rankingBadgeDateNov25.
  ///
  /// In ca, this message translates to:
  /// **'Nov 25'**
  String get rankingBadgeDateNov25;

  /// No description provided for @rankingBadgeResilient.
  ///
  /// In ca, this message translates to:
  /// **'Resilient'**
  String get rankingBadgeResilient;

  /// No description provided for @rankingBadgeDateDec25.
  ///
  /// In ca, this message translates to:
  /// **'Dec 25'**
  String get rankingBadgeDateDec25;

  /// No description provided for @rankingBadgeTest.
  ///
  /// In ca, this message translates to:
  /// **'Prova'**
  String get rankingBadgeTest;

  /// No description provided for @rankingBadgeDateJan26.
  ///
  /// In ca, this message translates to:
  /// **'Gen 26'**
  String get rankingBadgeDateJan26;

  /// No description provided for @rankingSearchHint.
  ///
  /// In ca, this message translates to:
  /// **'Cerca per carrer...'**
  String get rankingSearchHint;

  /// No description provided for @rankingNoCompetitors.
  ///
  /// In ca, this message translates to:
  /// **'No s’ha trobat cap competidor amb aquests filtres.'**
  String get rankingNoCompetitors;

  /// No description provided for @rankingLoadMore.
  ///
  /// In ca, this message translates to:
  /// **'Carrega més competidors'**
  String get rankingLoadMore;

  /// No description provided for @rankingNoProgressHistory.
  ///
  /// In ca, this message translates to:
  /// **'Encara no hi ha historial de progrés per aquest edifici.'**
  String get rankingNoProgressHistory;

  /// No description provided for @rankingSeasonProgressTitle.
  ///
  /// In ca, this message translates to:
  /// **'Progrés de temporades'**
  String get rankingSeasonProgressTitle;

  /// No description provided for @rankingSeasonProgressSubtitle.
  ///
  /// In ca, this message translates to:
  /// **'Evolució real durant les últimes {count} temporades disponibles.'**
  String rankingSeasonProgressSubtitle(int count);

  /// No description provided for @rankingProgressForBuilding.
  ///
  /// In ca, this message translates to:
  /// **'Progrés de {buildingName}'**
  String rankingProgressForBuilding(String buildingName);

  /// No description provided for @rankingProgressModalSubtitle.
  ///
  /// In ca, this message translates to:
  /// **'Evolució de puntuació durant les últimes {count} temporades.'**
  String rankingProgressModalSubtitle(int count);

  /// No description provided for @rankingAccumulatedImprovement.
  ///
  /// In ca, this message translates to:
  /// **'Millora acumulada: +{delta} punts'**
  String rankingAccumulatedImprovement(int delta);

  /// No description provided for @rankingPointsRange.
  ///
  /// In ca, this message translates to:
  /// **'{startPoints} → {currentPoints} punts'**
  String rankingPointsRange(int startPoints, int currentPoints);

  /// No description provided for @rankingDeltaPoints.
  ///
  /// In ca, this message translates to:
  /// **'{deltaText} pts'**
  String rankingDeltaPoints(String deltaText);

  /// No description provided for @rankingViewDetail.
  ///
  /// In ca, this message translates to:
  /// **'Veure detall'**
  String get rankingViewDetail;

  /// No description provided for @buildingCardDetailLoadError.
  ///
  /// In ca, this message translates to:
  /// **'No s’ha pogut carregar el detall de l’edifici.'**
  String get buildingCardDetailLoadError;

  /// No description provided for @buildingCardBadgesRecalculated.
  ///
  /// In ca, this message translates to:
  /// **'Insígnies recalculades correctament.'**
  String get buildingCardBadgesRecalculated;

  /// No description provided for @buildingCardBadgesLoadError.
  ///
  /// In ca, this message translates to:
  /// **'No s’han pogut carregar les insígnies.'**
  String get buildingCardBadgesLoadError;

  /// No description provided for @buildingCardLoadError.
  ///
  /// In ca, this message translates to:
  /// **'No s’ha pogut carregar l’edifici.'**
  String get buildingCardLoadError;

  /// No description provided for @buildingCardClimateZone.
  ///
  /// In ca, this message translates to:
  /// **'Zona climàtica {zone}'**
  String buildingCardClimateZone(String zone);

  /// No description provided for @buildingCardScoreExcellent.
  ///
  /// In ca, this message translates to:
  /// **'EXCEL·LENT'**
  String get buildingCardScoreExcellent;

  /// No description provided for @buildingCardScoreGood.
  ///
  /// In ca, this message translates to:
  /// **'BO'**
  String get buildingCardScoreGood;

  /// No description provided for @buildingCardScoreImprove.
  ///
  /// In ca, this message translates to:
  /// **'MILLORABLE'**
  String get buildingCardScoreImprove;

  /// No description provided for @buildingCardScorePriority.
  ///
  /// In ca, this message translates to:
  /// **'PRIORITARI'**
  String get buildingCardScorePriority;

  /// No description provided for @buildingCardEstimatedRating.
  ///
  /// In ca, this message translates to:
  /// **'QUALIFICACIÓ ESTIMADA'**
  String get buildingCardEstimatedRating;

  /// No description provided for @buildingCardPendingData.
  ///
  /// In ca, this message translates to:
  /// **'Dades pendents: {items}'**
  String buildingCardPendingData(String items);

  /// No description provided for @buildingCardBaseScore.
  ///
  /// In ca, this message translates to:
  /// **'Puntuació base BuildRank'**
  String get buildingCardBaseScore;

  /// No description provided for @buildingCardPerformance.
  ///
  /// In ca, this message translates to:
  /// **'RENDIMENT'**
  String get buildingCardPerformance;

  /// No description provided for @buildingCardInitialData.
  ///
  /// In ca, this message translates to:
  /// **'Dades inicials'**
  String get buildingCardInitialData;

  /// No description provided for @buildingCardSurface.
  ///
  /// In ca, this message translates to:
  /// **'SUPERFÍCIE'**
  String get buildingCardSurface;

  /// No description provided for @buildingCardFloors.
  ///
  /// In ca, this message translates to:
  /// **'PLANTES'**
  String get buildingCardFloors;

  /// No description provided for @buildingCardOrientation.
  ///
  /// In ca, this message translates to:
  /// **'ORIENTACIÓ'**
  String get buildingCardOrientation;

  /// No description provided for @buildingCardBadgesTitle.
  ///
  /// In ca, this message translates to:
  /// **'INSÍGNIES DE L’EDIFICI'**
  String get buildingCardBadgesTitle;

  /// No description provided for @buildingCardRecalculate.
  ///
  /// In ca, this message translates to:
  /// **'Recalcular'**
  String get buildingCardRecalculate;

  /// No description provided for @buildingCardNoBadges.
  ///
  /// In ca, this message translates to:
  /// **'Aquest edifici encara no té insígnies assignades. Es mostraran quan compleixi alguna fita.'**
  String get buildingCardNoBadges;

  /// No description provided for @buildingCardRecommendedActions.
  ///
  /// In ca, this message translates to:
  /// **'ACCIONS RECOMANADES'**
  String get buildingCardRecommendedActions;

  /// No description provided for @buildingCardActionSimulationTitle.
  ///
  /// In ca, this message translates to:
  /// **'Executa simulació'**
  String get buildingCardActionSimulationTitle;

  /// No description provided for @buildingCardActionSimulationSubtitle.
  ///
  /// In ca, this message translates to:
  /// **'Prova escenaris de millora per aquest edifici'**
  String get buildingCardActionSimulationSubtitle;

  /// No description provided for @buildingCardActionVoteTitle.
  ///
  /// In ca, this message translates to:
  /// **'Votació de la comunitat'**
  String get buildingCardActionVoteTitle;

  /// No description provided for @buildingCardActionVoteSubtitle.
  ///
  /// In ca, this message translates to:
  /// **'Funcionalitat preparada per futures propostes'**
  String get buildingCardActionVoteSubtitle;

  /// No description provided for @buildingCardActionReportTitle.
  ///
  /// In ca, this message translates to:
  /// **'Informe de junta (properament)'**
  String get buildingCardActionReportTitle;

  /// No description provided for @buildingCardActionReportSubtitle.
  ///
  /// In ca, this message translates to:
  /// **'La generació d’informes encara no està disponible en aquest MVP'**
  String get buildingCardActionReportSubtitle;

  /// No description provided for @buildingCardActionManageRequestsTitle.
  ///
  /// In ca, this message translates to:
  /// **'Gestionar sol·licituds pendents'**
  String get buildingCardActionManageRequestsTitle;

  /// No description provided for @buildingCardActionManageRequestsSubtitle.
  ///
  /// In ca, this message translates to:
  /// **'Revisa i valida noves peticions d’unió a l’edifici'**
  String get buildingCardActionManageRequestsSubtitle;

  /// No description provided for @buildingCardActionEditHabitatgeTitle.
  ///
  /// In ca, this message translates to:
  /// **'Editar el meu habitatge'**
  String get buildingCardActionEditHabitatgeTitle;

  /// No description provided for @buildingCardActionEditHabitatgeSubtitle.
  ///
  /// In ca, this message translates to:
  /// **'Completa superfície, reforma i dades energètiques'**
  String get buildingCardActionEditHabitatgeSubtitle;

  /// No description provided for @buildingCardTabDetails.
  ///
  /// In ca, this message translates to:
  /// **'Detalls'**
  String get buildingCardTabDetails;

  /// No description provided for @buildingCardTabHistory.
  ///
  /// In ca, this message translates to:
  /// **'Historial'**
  String get buildingCardTabHistory;

  /// No description provided for @buildingCardTabDocuments.
  ///
  /// In ca, this message translates to:
  /// **'Documents'**
  String get buildingCardTabDocuments;

  /// No description provided for @buildingCardHistoryUnavailableTitle.
  ///
  /// In ca, this message translates to:
  /// **'Historial encara no disponible'**
  String get buildingCardHistoryUnavailableTitle;

  /// No description provided for @buildingCardHistoryUnavailableBody.
  ///
  /// In ca, this message translates to:
  /// **'En aquesta secció es mostraran canvis de puntuació, validacions i simulacions guardades.'**
  String get buildingCardHistoryUnavailableBody;

  /// No description provided for @buildingCardDocumentsSoonTitle.
  ///
  /// In ca, this message translates to:
  /// **'Documents i informes (properament)'**
  String get buildingCardDocumentsSoonTitle;

  /// No description provided for @buildingCardDocumentsSoonBody.
  ///
  /// In ca, this message translates to:
  /// **'Aquesta secció queda preparada per a una futura integració documental. En aquest MVP no es mostren documents ni informes generats.'**
  String get buildingCardDocumentsSoonBody;

  /// No description provided for @buildingCardConstructionYear.
  ///
  /// In ca, this message translates to:
  /// **'ANY DE CONSTRUCCIÓ'**
  String get buildingCardConstructionYear;

  /// No description provided for @buildingCardFloorsCount.
  ///
  /// In ca, this message translates to:
  /// **'{count} plantes'**
  String buildingCardFloorsCount(String count);

  /// No description provided for @buildingCardTypology.
  ///
  /// In ca, this message translates to:
  /// **'TIPOLOGIA'**
  String get buildingCardTypology;

  /// No description provided for @buildingCardRegulation.
  ///
  /// In ca, this message translates to:
  /// **'REGLAMENT'**
  String get buildingCardRegulation;

  /// No description provided for @buildingCardNoLocation.
  ///
  /// In ca, this message translates to:
  /// **'Aquest edifici encara no té localització associada.'**
  String get buildingCardNoLocation;

  /// No description provided for @buildingCardLocationSummary.
  ///
  /// In ca, this message translates to:
  /// **'Localització: {street}, {number} · {neighborhood} · {postalCode}'**
  String buildingCardLocationSummary(
    String street,
    String number,
    String neighborhood,
    String postalCode,
  );

  /// No description provided for @buildingFormStreetMinChars.
  ///
  /// In ca, this message translates to:
  /// **'Escriu almenys 2 caràcters per cercar el carrer.'**
  String get buildingFormStreetMinChars;

  /// No description provided for @buildingFormNoStreetFound.
  ///
  /// In ca, this message translates to:
  /// **'No s’ha trobat cap carrer amb “{query}”.'**
  String buildingFormNoStreetFound(String query);

  /// No description provided for @buildingFormStreetSuggestionsError.
  ///
  /// In ca, this message translates to:
  /// **'No s’han pogut carregar els suggeriments de carrers.'**
  String get buildingFormStreetSuggestionsError;

  /// No description provided for @buildingFormPostalCodeRequired.
  ///
  /// In ca, this message translates to:
  /// **'El codi postal és obligatori.'**
  String get buildingFormPostalCodeRequired;

  /// No description provided for @buildingFormPostalCodeInvalid.
  ///
  /// In ca, this message translates to:
  /// **'El codi postal ha de tenir 5 dígits.'**
  String get buildingFormPostalCodeInvalid;

  /// No description provided for @buildingFormNeighborhoodRequired.
  ///
  /// In ca, this message translates to:
  /// **'El camp barri és obligatori.'**
  String get buildingFormNeighborhoodRequired;

  /// No description provided for @buildingFormStreetRequired.
  ///
  /// In ca, this message translates to:
  /// **'El nom del carrer és obligatori.'**
  String get buildingFormStreetRequired;

  /// No description provided for @buildingFormStreetSelectionRequired.
  ///
  /// In ca, this message translates to:
  /// **'Selecciona un carrer de la llista de suggeriments.'**
  String get buildingFormStreetSelectionRequired;

  /// No description provided for @buildingFormNumberRequired.
  ///
  /// In ca, this message translates to:
  /// **'El número és obligatori.'**
  String get buildingFormNumberRequired;

  /// No description provided for @buildingFormNumberPositive.
  ///
  /// In ca, this message translates to:
  /// **'El número del carrer ha de ser un enter positiu.'**
  String get buildingFormNumberPositive;

  /// No description provided for @buildingFormNumberOutOfRange.
  ///
  /// In ca, this message translates to:
  /// **'El número no està dins del rang permès per aquest carrer ({minNumber}-{maxNumber}).'**
  String buildingFormNumberOutOfRange(int minNumber, int maxNumber);

  /// No description provided for @buildingFormTypeRequired.
  ///
  /// In ca, this message translates to:
  /// **'Has de seleccionar una tipologia.'**
  String get buildingFormTypeRequired;

  /// No description provided for @buildingFormConstructionYearRequired.
  ///
  /// In ca, this message translates to:
  /// **'L\'any de construcció és obligatori.'**
  String get buildingFormConstructionYearRequired;

  /// No description provided for @buildingFormConstructionYearInteger.
  ///
  /// In ca, this message translates to:
  /// **'L\'any de construcció ha de ser un número enter.'**
  String get buildingFormConstructionYearInteger;

  /// No description provided for @buildingFormConstructionYearRange.
  ///
  /// In ca, this message translates to:
  /// **'L\'any de construcció ha d\'estar entre 1800 i {currentYear}.'**
  String buildingFormConstructionYearRange(int currentYear);

  /// No description provided for @buildingFormRegulationRequired.
  ///
  /// In ca, this message translates to:
  /// **'La normativa vigent és obligatòria.'**
  String get buildingFormRegulationRequired;

  /// No description provided for @buildingFormFloorsRequired.
  ///
  /// In ca, this message translates to:
  /// **'El nombre de plantes és obligatori.'**
  String get buildingFormFloorsRequired;

  /// No description provided for @buildingFormFloorsPositive.
  ///
  /// In ca, this message translates to:
  /// **'El nombre de plantes ha de ser un enter positiu.'**
  String get buildingFormFloorsPositive;

  /// No description provided for @buildingFormSurfaceRequired.
  ///
  /// In ca, this message translates to:
  /// **'La superfície total és obligatòria.'**
  String get buildingFormSurfaceRequired;

  /// No description provided for @buildingFormSurfacePositive.
  ///
  /// In ca, this message translates to:
  /// **'La superfície total ha de ser un número positiu.'**
  String get buildingFormSurfacePositive;

  /// No description provided for @buildingFormOrientationRequired.
  ///
  /// In ca, this message translates to:
  /// **'Has de seleccionar una orientació principal.'**
  String get buildingFormOrientationRequired;

  /// No description provided for @buildingFormDocumentsRequired.
  ///
  /// In ca, this message translates to:
  /// **'Cal adjuntar almenys un document de verificació.'**
  String get buildingFormDocumentsRequired;

  /// No description provided for @buildingFormCreatedMissingId.
  ///
  /// In ca, this message translates to:
  /// **'L’edifici s’ha creat però la resposta no conté cap identificador reconeixible.'**
  String get buildingFormCreatedMissingId;

  /// No description provided for @buildingFormSubmitSuccess.
  ///
  /// In ca, this message translates to:
  /// **'Edifici creat i documentació enviada. Queda pendent de revisió.'**
  String get buildingFormSubmitSuccess;

  /// No description provided for @buildingFormUnexpectedSaveError.
  ///
  /// In ca, this message translates to:
  /// **'S\'ha produït un error inesperat en desar l\'edifici.'**
  String get buildingFormUnexpectedSaveError;

  /// No description provided for @buildingFormTypeResidential.
  ///
  /// In ca, this message translates to:
  /// **'Residencial'**
  String get buildingFormTypeResidential;

  /// No description provided for @buildingFormTypeCommercial.
  ///
  /// In ca, this message translates to:
  /// **'Comercial'**
  String get buildingFormTypeCommercial;

  /// No description provided for @buildingFormTypeEducational.
  ///
  /// In ca, this message translates to:
  /// **'Educatiu'**
  String get buildingFormTypeEducational;

  /// No description provided for @buildingFormTypeHealthcare.
  ///
  /// In ca, this message translates to:
  /// **'Sanitari'**
  String get buildingFormTypeHealthcare;

  /// No description provided for @buildingFormTypeMixed.
  ///
  /// In ca, this message translates to:
  /// **'Mixt'**
  String get buildingFormTypeMixed;

  /// No description provided for @buildingFormTypeResidentialSubtitle.
  ///
  /// In ca, this message translates to:
  /// **'Unifamiliar o pisos'**
  String get buildingFormTypeResidentialSubtitle;

  /// No description provided for @buildingFormTypeCommercialSubtitle.
  ///
  /// In ca, this message translates to:
  /// **'Oficines, comerç...'**
  String get buildingFormTypeCommercialSubtitle;

  /// No description provided for @buildingFormTypeEducationalSubtitle.
  ///
  /// In ca, this message translates to:
  /// **'Escoles'**
  String get buildingFormTypeEducationalSubtitle;

  /// No description provided for @buildingFormTypeHealthcareSubtitle.
  ///
  /// In ca, this message translates to:
  /// **'Hospitals'**
  String get buildingFormTypeHealthcareSubtitle;

  /// No description provided for @buildingFormTypeMixedSubtitle.
  ///
  /// In ca, this message translates to:
  /// **'Usos combinats'**
  String get buildingFormTypeMixedSubtitle;

  /// No description provided for @orientationNorth.
  ///
  /// In ca, this message translates to:
  /// **'Nord'**
  String get orientationNorth;

  /// No description provided for @orientationSouth.
  ///
  /// In ca, this message translates to:
  /// **'Sud'**
  String get orientationSouth;

  /// No description provided for @orientationEast.
  ///
  /// In ca, this message translates to:
  /// **'Est'**
  String get orientationEast;

  /// No description provided for @orientationWest.
  ///
  /// In ca, this message translates to:
  /// **'Oest'**
  String get orientationWest;

  /// No description provided for @buildingFormNewBuildingChip.
  ///
  /// In ca, this message translates to:
  /// **'Nou Edifici'**
  String get buildingFormNewBuildingChip;

  /// No description provided for @buildingFormTitle.
  ///
  /// In ca, this message translates to:
  /// **'Registra l\'edifici'**
  String get buildingFormTitle;

  /// No description provided for @buildingFormStep1Subtitle.
  ///
  /// In ca, this message translates to:
  /// **'Comencem per la ubicació de l\'edifici.'**
  String get buildingFormStep1Subtitle;

  /// No description provided for @buildingFormStep2Subtitle.
  ///
  /// In ca, this message translates to:
  /// **'Ara completa la informació general.'**
  String get buildingFormStep2Subtitle;

  /// No description provided for @buildingFormStep3Subtitle.
  ///
  /// In ca, this message translates to:
  /// **'Afegeix les dades tècniques bàsiques.'**
  String get buildingFormStep3Subtitle;

  /// No description provided for @buildingFormStep4Subtitle.
  ///
  /// In ca, this message translates to:
  /// **'Adjunta la documentació per validar-te com a administrador de finca.'**
  String get buildingFormStep4Subtitle;

  /// No description provided for @buildingFormLocationSection.
  ///
  /// In ca, this message translates to:
  /// **'UBICACIÓ'**
  String get buildingFormLocationSection;

  /// No description provided for @buildingFormPostalCodeLabel.
  ///
  /// In ca, this message translates to:
  /// **'Codi postal'**
  String get buildingFormPostalCodeLabel;

  /// No description provided for @buildingFormPostalCodeHint.
  ///
  /// In ca, this message translates to:
  /// **'p. ex., 08025'**
  String get buildingFormPostalCodeHint;

  /// No description provided for @buildingFormOr.
  ///
  /// In ca, this message translates to:
  /// **'o'**
  String get buildingFormOr;

  /// No description provided for @buildingFormNeighborhoodLabel.
  ///
  /// In ca, this message translates to:
  /// **'Barri'**
  String get buildingFormNeighborhoodLabel;

  /// No description provided for @buildingFormNeighborhoodHint.
  ///
  /// In ca, this message translates to:
  /// **'p. ex., Sagrada Família'**
  String get buildingFormNeighborhoodHint;

  /// No description provided for @buildingFormStreetLabel.
  ///
  /// In ca, this message translates to:
  /// **'Nom del carrer'**
  String get buildingFormStreetLabel;

  /// No description provided for @buildingFormStreetHint.
  ///
  /// In ca, this message translates to:
  /// **'Comença a escriure el carrer'**
  String get buildingFormStreetHint;

  /// No description provided for @buildingFormStreetNumberRange.
  ///
  /// In ca, this message translates to:
  /// **'Números {minNumber}-{maxNumber}'**
  String buildingFormStreetNumberRange(int minNumber, int maxNumber);

  /// No description provided for @buildingFormStreetRangeUnknown.
  ///
  /// In ca, this message translates to:
  /// **'Rang de numeració no informat'**
  String get buildingFormStreetRangeUnknown;

  /// No description provided for @buildingFormNumberLabel.
  ///
  /// In ca, this message translates to:
  /// **'Número'**
  String get buildingFormNumberLabel;

  /// No description provided for @buildingFormNumberHint.
  ///
  /// In ca, this message translates to:
  /// **'p. ex., 123'**
  String get buildingFormNumberHint;

  /// No description provided for @buildingFormLocationInfo.
  ///
  /// In ca, this message translates to:
  /// **'Selecciona un carrer de la llista de suggeriments. En desar, BuildRank crearà primer la localització i després l’edifici vinculat al teu compte d’administrador.'**
  String get buildingFormLocationInfo;

  /// No description provided for @buildingFormGeneralSection.
  ///
  /// In ca, this message translates to:
  /// **'INFORMACIÓ GENERAL'**
  String get buildingFormGeneralSection;

  /// No description provided for @buildingFormRegisteredLocation.
  ///
  /// In ca, this message translates to:
  /// **'Ubicació registrada'**
  String get buildingFormRegisteredLocation;

  /// No description provided for @buildingFormAddressLabel.
  ///
  /// In ca, this message translates to:
  /// **'Adreça'**
  String get buildingFormAddressLabel;

  /// No description provided for @buildingFormTypeLabel.
  ///
  /// In ca, this message translates to:
  /// **'Tipologia de l\'edifici'**
  String get buildingFormTypeLabel;

  /// No description provided for @buildingFormConstructionYearLabel.
  ///
  /// In ca, this message translates to:
  /// **'Any de construcció'**
  String get buildingFormConstructionYearLabel;

  /// No description provided for @buildingFormConstructionYearHint.
  ///
  /// In ca, this message translates to:
  /// **'p. ex., 1998'**
  String get buildingFormConstructionYearHint;

  /// No description provided for @buildingFormRegulationLabel.
  ///
  /// In ca, this message translates to:
  /// **'Normativa vigent'**
  String get buildingFormRegulationLabel;

  /// No description provided for @buildingFormRegulationHint.
  ///
  /// In ca, this message translates to:
  /// **'p. ex., CTE'**
  String get buildingFormRegulationHint;

  /// No description provided for @buildingFormTechnicalSection.
  ///
  /// In ca, this message translates to:
  /// **'DADES TÈCNIQUES'**
  String get buildingFormTechnicalSection;

  /// No description provided for @buildingFormBuildingSummary.
  ///
  /// In ca, this message translates to:
  /// **'Resum de l’edifici'**
  String get buildingFormBuildingSummary;

  /// No description provided for @buildingFormConstructionYearSummaryLabel.
  ///
  /// In ca, this message translates to:
  /// **'Any construcció'**
  String get buildingFormConstructionYearSummaryLabel;

  /// No description provided for @buildingFormRegulationSummaryLabel.
  ///
  /// In ca, this message translates to:
  /// **'Normativa'**
  String get buildingFormRegulationSummaryLabel;

  /// No description provided for @buildingFormFloorsLabel.
  ///
  /// In ca, this message translates to:
  /// **'Nombre de plantes'**
  String get buildingFormFloorsLabel;

  /// No description provided for @buildingFormFloorsHint.
  ///
  /// In ca, this message translates to:
  /// **'p. ex., 6'**
  String get buildingFormFloorsHint;

  /// No description provided for @buildingFormSurfaceLabel.
  ///
  /// In ca, this message translates to:
  /// **'Superfície total (m²)'**
  String get buildingFormSurfaceLabel;

  /// No description provided for @buildingFormSurfaceHint.
  ///
  /// In ca, this message translates to:
  /// **'p. ex., 850'**
  String get buildingFormSurfaceHint;

  /// No description provided for @buildingFormOrientationLabel.
  ///
  /// In ca, this message translates to:
  /// **'Orientació principal'**
  String get buildingFormOrientationLabel;

  /// No description provided for @buildingFormOrientationHint.
  ///
  /// In ca, this message translates to:
  /// **'Selecciona una orientació'**
  String get buildingFormOrientationHint;

  /// No description provided for @buildingFormDocumentationSection.
  ///
  /// In ca, this message translates to:
  /// **'DOCUMENTACIÓ'**
  String get buildingFormDocumentationSection;

  /// No description provided for @buildingFormBuildingToVerify.
  ///
  /// In ca, this message translates to:
  /// **'Edifici a verificar'**
  String get buildingFormBuildingToVerify;

  /// No description provided for @buildingFormSubmittingDocuments.
  ///
  /// In ca, this message translates to:
  /// **'Enviant documentació...'**
  String get buildingFormSubmittingDocuments;

  /// No description provided for @buildingFormSubmit.
  ///
  /// In ca, this message translates to:
  /// **'Crear edifici i enviar verificació'**
  String get buildingFormSubmit;

  /// No description provided for @editHabitatgeNoLinkedHome.
  ///
  /// In ca, this message translates to:
  /// **'No s’ha trobat cap habitatge vinculat al teu usuari en aquest edifici.'**
  String get editHabitatgeNoLinkedHome;

  /// No description provided for @editHabitatgeNoneSelected.
  ///
  /// In ca, this message translates to:
  /// **'No s’ha seleccionat cap habitatge per editar.'**
  String get editHabitatgeNoneSelected;

  /// No description provided for @editHabitatgeMissingCadastralReference.
  ///
  /// In ca, this message translates to:
  /// **'L’habitatge seleccionat no té referència cadastral.'**
  String get editHabitatgeMissingCadastralReference;

  /// No description provided for @editHabitatgeLoadError.
  ///
  /// In ca, this message translates to:
  /// **'No s’ha pogut carregar l’habitatge.'**
  String get editHabitatgeLoadError;

  /// No description provided for @editHabitatgeSelectorTitle.
  ///
  /// In ca, this message translates to:
  /// **'Quin habitatge vols editar?'**
  String get editHabitatgeSelectorTitle;

  /// No description provided for @editHabitatgeSelectorFloorDoor.
  ///
  /// In ca, this message translates to:
  /// **'Planta {floor} · Porta {door}'**
  String editHabitatgeSelectorFloorDoor(String floor, String door);

  /// No description provided for @editHabitatgeEnergyRequired.
  ///
  /// In ca, this message translates to:
  /// **'Camp obligatori si informes dades energètiques'**
  String get editHabitatgeEnergyRequired;

  /// No description provided for @editHabitatgeEnergyDateRequired.
  ///
  /// In ca, this message translates to:
  /// **'Cal informar la data d’entrada si informes dades energètiques'**
  String get editHabitatgeEnergyDateRequired;

  /// No description provided for @editHabitatgeSaveWithEnergySuccess.
  ///
  /// In ca, this message translates to:
  /// **'Dades de l’habitatge i dades energètiques actualitzades.'**
  String get editHabitatgeSaveWithEnergySuccess;

  /// No description provided for @editHabitatgeSaveSuccess.
  ///
  /// In ca, this message translates to:
  /// **'Dades de l’habitatge actualitzades.'**
  String get editHabitatgeSaveSuccess;

  /// No description provided for @editHabitatgeAppBarTitle.
  ///
  /// In ca, this message translates to:
  /// **'Editar habitatge'**
  String get editHabitatgeAppBarTitle;

  /// No description provided for @editHabitatgeCannotEditTitle.
  ///
  /// In ca, this message translates to:
  /// **'No es pot editar l’habitatge'**
  String get editHabitatgeCannotEditTitle;

  /// No description provided for @editHabitatgeSaveButton.
  ///
  /// In ca, this message translates to:
  /// **'Guardar dades'**
  String get editHabitatgeSaveButton;

  /// No description provided for @editHabitatgeIntroTitle.
  ///
  /// In ca, this message translates to:
  /// **'Completa les dades del teu habitatge'**
  String get editHabitatgeIntroTitle;

  /// No description provided for @editHabitatgeIntroBody.
  ///
  /// In ca, this message translates to:
  /// **'Aquestes dades ajudaran a calcular millor la classificació estimada i la puntuació BuildRank de l’edifici.'**
  String get editHabitatgeIntroBody;

  /// No description provided for @editHabitatgeHomeDataTitle.
  ///
  /// In ca, this message translates to:
  /// **'Dades de l’habitatge'**
  String get editHabitatgeHomeDataTitle;

  /// No description provided for @editHabitatgeHomeDataSubtitle.
  ///
  /// In ca, this message translates to:
  /// **'Informació bàsica de l’habitatge vinculat al teu compte.'**
  String get editHabitatgeHomeDataSubtitle;

  /// No description provided for @editHabitatgeRenovationYear.
  ///
  /// In ca, this message translates to:
  /// **'Any reforma'**
  String get editHabitatgeRenovationYear;

  /// No description provided for @editHabitatgeInvalidYear.
  ///
  /// In ca, this message translates to:
  /// **'Introdueix un any vàlid'**
  String get editHabitatgeInvalidYear;

  /// No description provided for @editHabitatgeYearOutOfRange.
  ///
  /// In ca, this message translates to:
  /// **'L’any no és vàlid'**
  String get editHabitatgeYearOutOfRange;

  /// No description provided for @editHabitatgeEnergyDataTitle.
  ///
  /// In ca, this message translates to:
  /// **'Dades energètiques'**
  String get editHabitatgeEnergyDataTitle;

  /// No description provided for @editHabitatgeEnergyDataSubtitle.
  ///
  /// In ca, this message translates to:
  /// **'Afegeix la informació disponible del certificat o estimació energètica.'**
  String get editHabitatgeEnergyDataSubtitle;

  /// No description provided for @editHabitatgeEnergyOptionalNotice.
  ///
  /// In ca, this message translates to:
  /// **'Les dades energètiques són opcionals. Si informes qualsevol camp d’aquesta secció, hauràs d’omplir tots els camps obligatoris del certificat energètic.'**
  String get editHabitatgeEnergyOptionalNotice;

  /// No description provided for @editHabitatgeGlobalRating.
  ///
  /// In ca, this message translates to:
  /// **'Qualificació global'**
  String get editHabitatgeGlobalRating;

  /// No description provided for @editHabitatgePrimaryEnergyConsumption.
  ///
  /// In ca, this message translates to:
  /// **'Consum energia primària'**
  String get editHabitatgePrimaryEnergyConsumption;

  /// No description provided for @editHabitatgeFinalEnergyConsumption.
  ///
  /// In ca, this message translates to:
  /// **'Consum energia final'**
  String get editHabitatgeFinalEnergyConsumption;

  /// No description provided for @editHabitatgeCo2Emissions.
  ///
  /// In ca, this message translates to:
  /// **'Emissions CO₂'**
  String get editHabitatgeCo2Emissions;

  /// No description provided for @editHabitatgeAnnualEnergyCost.
  ///
  /// In ca, this message translates to:
  /// **'Cost anual energia (€)'**
  String get editHabitatgeAnnualEnergyCost;

  /// No description provided for @editHabitatgeConsumptionByUse.
  ///
  /// In ca, this message translates to:
  /// **'Consums per ús'**
  String get editHabitatgeConsumptionByUse;

  /// No description provided for @editHabitatgeHeatingEnergy.
  ///
  /// In ca, this message translates to:
  /// **'Energia calefacció'**
  String get editHabitatgeHeatingEnergy;

  /// No description provided for @editHabitatgeCoolingEnergy.
  ///
  /// In ca, this message translates to:
  /// **'Energia refrigeració'**
  String get editHabitatgeCoolingEnergy;

  /// No description provided for @editHabitatgeAcsEnergy.
  ///
  /// In ca, this message translates to:
  /// **'Energia ACS'**
  String get editHabitatgeAcsEnergy;

  /// No description provided for @editHabitatgeLightingEnergy.
  ///
  /// In ca, this message translates to:
  /// **'Energia enllumenament'**
  String get editHabitatgeLightingEnergy;

  /// No description provided for @editHabitatgeEmissionsByUse.
  ///
  /// In ca, this message translates to:
  /// **'Emissions per ús'**
  String get editHabitatgeEmissionsByUse;

  /// No description provided for @editHabitatgeHeatingEmissions.
  ///
  /// In ca, this message translates to:
  /// **'Emissions calefacció'**
  String get editHabitatgeHeatingEmissions;

  /// No description provided for @editHabitatgeCoolingEmissions.
  ///
  /// In ca, this message translates to:
  /// **'Emissions refrigeració'**
  String get editHabitatgeCoolingEmissions;

  /// No description provided for @editHabitatgeAcsEmissions.
  ///
  /// In ca, this message translates to:
  /// **'Emissions ACS'**
  String get editHabitatgeAcsEmissions;

  /// No description provided for @editHabitatgeLightingEmissions.
  ///
  /// In ca, this message translates to:
  /// **'Emissions enllumenament'**
  String get editHabitatgeLightingEmissions;

  /// No description provided for @editHabitatgeCertificationEnvelope.
  ///
  /// In ca, this message translates to:
  /// **'Certificació i envolupant'**
  String get editHabitatgeCertificationEnvelope;

  /// No description provided for @editHabitatgeThermalInsulation.
  ///
  /// In ca, this message translates to:
  /// **'Aïllament tèrmic'**
  String get editHabitatgeThermalInsulation;

  /// No description provided for @editHabitatgeWindowValue.
  ///
  /// In ca, this message translates to:
  /// **'Valor finestres'**
  String get editHabitatgeWindowValue;

  /// No description provided for @editHabitatgeCertificationTool.
  ///
  /// In ca, this message translates to:
  /// **'Eina certificació'**
  String get editHabitatgeCertificationTool;

  /// No description provided for @editHabitatgeCertificationReason.
  ///
  /// In ca, this message translates to:
  /// **'Motiu certificació'**
  String get editHabitatgeCertificationReason;

  /// No description provided for @editHabitatgeEnergyRenovation.
  ///
  /// In ca, this message translates to:
  /// **'Rehabilitació energètica'**
  String get editHabitatgeEnergyRenovation;

  /// No description provided for @editHabitatgeSelectEntryDate.
  ///
  /// In ca, this message translates to:
  /// **'Seleccionar data d’entrada *'**
  String get editHabitatgeSelectEntryDate;

  /// No description provided for @editHabitatgeEntryDate.
  ///
  /// In ca, this message translates to:
  /// **'Data d’entrada: {date}'**
  String editHabitatgeEntryDate(String date);
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
