// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Catalan Valencian (`ca`).
class AppLocalizationsCa extends AppLocalizations {
  AppLocalizationsCa([String locale = 'ca']) : super(locale);

  @override
  String get authLanguageLabel => 'Idioma';

  @override
  String get authLanguageCatalan => 'Català';

  @override
  String get authLanguageSpanish => 'Español';

  @override
  String get authLanguageEnglish => 'English';

  @override
  String get authLoginTab => 'Inicia sessió';

  @override
  String get authRegisterTab => 'Registra\'t';

  @override
  String authRegisterSuccessWithEmail(String email) {
    return 'Compte creat correctament. Ara pots iniciar sessió amb $email.';
  }

  @override
  String get loginWelcomeTitle => 'Benvingut a BuildRank';

  @override
  String get loginWelcomeSubtitle =>
      'Gestiona el teu edifici, consulta el rànquing energètic i segueix la teva evolució des d\'un únic lloc.';

  @override
  String get loginCardTitle => 'Inicia sessió';

  @override
  String get loginCardSubtitle =>
      'Accedeix amb el teu compte per veure la informació del teu edifici.';

  @override
  String get emailLabel => 'Correu electrònic';

  @override
  String get emailHint => 'nom@exemple.com';

  @override
  String get passwordLabel => 'Contrasenya';

  @override
  String get loginForgotPassword => 'Has oblidat la contrasenya?';

  @override
  String get loginButton => 'Entrar';

  @override
  String get loginGoogleButton => 'Continuar amb Google';

  @override
  String get loginMissingFieldsError =>
      'Has d\'omplir el correu i la contrasenya.';

  @override
  String get registerTitle => 'Crea un compte';

  @override
  String get registerSubtitle => 'Comença el seguiment del teu edifici avui';

  @override
  String get registerCardTitle => 'Registra\'t';

  @override
  String get registerCardSubtitle =>
      'Crea el teu compte per començar a gestionar edificis.';

  @override
  String get registerRoleHeader => 'SELECCIONA EL TEU ROL';

  @override
  String get registerRoleAdmin => 'Admin.\nfinca';

  @override
  String get registerRoleOwner => 'Propietari';

  @override
  String get registerRoleTenant => 'Llogater';

  @override
  String get firstNameLabel => 'Nom';

  @override
  String get lastNameLabel => 'Cognoms';

  @override
  String get confirmPasswordLabel => 'Confirmar contrasenya';

  @override
  String get registerAcceptTermsPrefix => 'Accepto els ';

  @override
  String get registerTermsOfService => 'Termes del Servei';

  @override
  String get registerAcceptTermsMiddle => ' i la ';

  @override
  String get registerPrivacyPolicy => 'Política de Privacitat';

  @override
  String get registerCreateAccountButton => 'Crea el compte de BuildRank';

  @override
  String get registerGoogleButton => 'Crear compte amb Google';

  @override
  String get registerMissingFieldsError => 'Has d\'omplir tots els camps.';

  @override
  String get registerPasswordsMismatchError =>
      'Les contrasenyes no coincideixen.';

  @override
  String get registerAcceptTermsError =>
      'Has d\'acceptar els termes i condicions.';

  @override
  String get registerSuccessInline =>
      'Compte creat correctament. Ara ja pots iniciar sessió.';

  @override
  String get registerSuccessSnackBar => 'Registre completat correctament.';

  @override
  String get passwordResetAppBarTitle => 'Recuperar contrasenya';

  @override
  String get passwordResetRequestTitle => 'Recupera la contrasenya';

  @override
  String get passwordResetConfirmTitle => 'Crea una nova contrasenya';

  @override
  String get passwordResetRequestSubtitle =>
      'Escriu el correu associat al teu compte i enganxa l\'enllaç rebut per email.';

  @override
  String get passwordResetConfirmSubtitle =>
      'Introdueix una nova contrasenya per al teu compte.';

  @override
  String get passwordResetSendInstructions => 'Enviar instruccions';

  @override
  String get passwordResetHaveLinkTitle => 'Ja tens l\'enllaç?';

  @override
  String get passwordResetHaveLinkBody =>
      'Enganxa aquí l\'enllaç rebut per email. BuildRank n\'extraurà automàticament el uid i el token.';

  @override
  String get passwordResetLinkLabel => 'Enllaç de recuperació';

  @override
  String get passwordResetLinkHint =>
      'https://.../reset-password?uid=...&token=...';

  @override
  String get passwordResetContinueWithLink => 'Continuar amb l\'enllaç';

  @override
  String get newPasswordLabel => 'Nova contrasenya';

  @override
  String get confirmNewPasswordLabel => 'Confirmar nova contrasenya';

  @override
  String get passwordResetSubmit => 'Restablir contrasenya';

  @override
  String get passwordResetPasteAnotherLink =>
      'Tornar a enganxar un altre enllaç';

  @override
  String get passwordResetEmailRequiredError =>
      'Introdueix el teu correu electrònic.';

  @override
  String get passwordResetRequestSuccess =>
      'Si el correu existeix, rebràs un enllaç per restablir la contrasenya. Enganxa\'l aquí quan el tinguis.';

  @override
  String get passwordResetLinkRequiredError =>
      'Enganxa l\'enllaç de recuperació rebut per email.';

  @override
  String get passwordResetInvalidLinkError =>
      'No s\'han pogut trobar els paràmetres uid i token dins l\'enllaç.';

  @override
  String get passwordResetLinkValidatedSuccess =>
      'Enllaç validat. Introdueix la nova contrasenya.';

  @override
  String get passwordResetPasswordRequiredError =>
      'Introdueix i confirma la nova contrasenya.';

  @override
  String get passwordResetSuccessSnackBar =>
      'Contrasenya restablerta correctament.';

  @override
  String get legalTermsTitle => 'Termes del Servei';

  @override
  String get legalPrivacyTitle => 'Política de Privacitat';

  @override
  String get legalTermsSubtitle => 'Condicions bàsiques d\'ús de BuildRank';

  @override
  String get legalPrivacySubtitle =>
      'Com BuildRank tracta les dades dins del MVP';

  @override
  String get legalInfoNotice =>
      'BuildRank és un projecte acadèmic en fase MVP. Aquest text resumeix les condicions i criteris de privacitat aplicables a la demo i a l\'ús del prototip.';

  @override
  String get legalTermsSection1Title => '1. Finalitat del servei';

  @override
  String get legalTermsSection1Body =>
      'BuildRank és una aplicació orientada a promoure un ús més responsable i sostenible de l\'energia en edificis residencials. Permet consultar informació d\'edificis, visualitzar indicadors, comparar resultats, simular millores i participar en funcionalitats comunitàries segons el rol de l\'usuari.';

  @override
  String get legalTermsSection2Title =>
      '2. Caràcter orientatiu de la informació';

  @override
  String get legalTermsSection2Body =>
      'Les puntuacions, rànquings, classificacions energètiques estimades, simulacions, Heat Risk Index i insígnies tenen finalitat informativa i orientativa. No constitueixen certificacions energètiques oficials, informes tècnics professionals ni recomanacions d\'enginyeria concloents.';

  @override
  String get legalTermsSection3Title => '3. Ús responsable de l\'aplicació';

  @override
  String get legalTermsSection3Body =>
      'L\'usuari es compromet a utilitzar BuildRank de manera responsable, a no introduir dades falses o de tercers sense autorització i a respectar les normes de convivència en votacions, xats i espais comunitaris.';

  @override
  String get legalTermsSection4Title => '4. Rols i permisos';

  @override
  String get legalTermsSection4Body =>
      'Les accions disponibles poden variar segons el rol de l\'usuari i la seva relació amb un edifici. Algunes accions, com gestionar edificis, validar sol·licituds, recalcular insígnies o administrar votacions, poden estar limitades a administradors autoritzats.';

  @override
  String get legalTermsSection5Title =>
      '5. Dades obertes, dades manuals i estimacions';

  @override
  String get legalTermsSection5Body =>
      'BuildRank pot combinar dades obertes, dades introduïdes manualment i resultats estimats. Quan una dada sigui incompleta, estimada o pendent de verificació, l\'aplicació intentarà indicar-ho de manera clara perquè l\'usuari pugui interpretar-la correctament.';

  @override
  String get legalTermsSection6Title => '6. Revisió humana i fonts oficials';

  @override
  String get legalTermsSection6Body =>
      'En cas de discrepància sobre dades energètiques, documentació, titularitat o permisos, la revisió humana i les fonts oficials prevalen sobre qualsevol resultat automàtic o estimat mostrat pel sistema.';

  @override
  String get legalPrivacySection1Title => '1. Dades tractades';

  @override
  String get legalPrivacySection1Body =>
      'BuildRank pot tractar dades de compte, rol d\'usuari, edificis associats, habitatges vinculats, sol·licituds, votacions, simulacions, notificacions i accions de validació o administració.';

  @override
  String get legalPrivacySection2Title => '2. Finalitat del tractament';

  @override
  String get legalPrivacySection2Body =>
      'Les dades es fan servir per autenticar usuaris, gestionar edificis, aplicar permisos, mostrar indicadors, facilitar participació comunitària, registrar accions sensibles i millorar la qualitat de les dades del sistema.';

  @override
  String get legalPrivacySection3Title => '3. Minimització de dades';

  @override
  String get legalPrivacySection3Body =>
      'BuildRank intenta mostrar només la informació necessària per a cada funcionalitat. Per exemple, les vistes generals com el mapa no haurien d\'exposar emails, documents, habitatges o dades personals innecessàries.';

  @override
  String get legalPrivacySection4Title => '4. Documents i verificacions';

  @override
  String get legalPrivacySection4Body =>
      'En processos de verificació, els documents aportats poden contenir informació sensible. Aquests fitxers s\'han d\'utilitzar només per revisar l\'evidència necessària i no per a finalitats alienes al procés de validació.';

  @override
  String get legalPrivacySection5Title => '5. Traçabilitat i auditoria';

  @override
  String get legalPrivacySection5Body =>
      'Les accions sensibles poden quedar registrades amb finalitats de seguretat, auditoria i integritat del sistema. Aquesta traçabilitat ajuda a explicar canvis rellevants sobre permisos, validacions, edificis, votacions o puntuacions.';

  @override
  String get legalPrivacySection6Title =>
      '6. Ús d\'IA i decisions automàtiques';

  @override
  String get legalPrivacySection6Body =>
      'Qualsevol suport automatitzat o basat en IA, si existeix, s\'ha d\'entendre com una ajuda per detectar incoherències o punts de revisió. No substitueix la revisió humana ni hauria d\'aprovar documents, assignar rols o modificar puntuacions de manera autònoma.';

  @override
  String get legalPrivacySection7Title => '7. Responsabilitat de l\'usuari';

  @override
  String get legalPrivacySection7Body =>
      'L\'usuari ha d\'evitar pujar informació innecessària o documents de tercers sense autorització. Les claus, tokens i credencials no s\'han de compartir ni introduir fora dels formularis previstos per l\'aplicació.';

  @override
  String get accountBlockedTitle => 'Compte bloquejat';

  @override
  String get accountBlockedBody =>
      'El teu compte ha estat bloquejat permanentment. Contacta amb l\'administrador per obtenir més informació.';

  @override
  String get accountSuspendedTitle => 'Compte suspès';

  @override
  String get accountSuspendedBody =>
      'El teu compte està suspès temporalment. Contacta amb l\'administrador per obtenir més informació.';

  @override
  String get accountBackToLogin => 'Torna a l\'inici de sessió';
}
