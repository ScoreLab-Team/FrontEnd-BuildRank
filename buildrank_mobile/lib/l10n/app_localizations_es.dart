// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get authLanguageLabel => 'Idioma';

  @override
  String get authLanguageCatalan => 'Català';

  @override
  String get authLanguageSpanish => 'Español';

  @override
  String get authLanguageEnglish => 'English';

  @override
  String get authLoginTab => 'Iniciar sesión';

  @override
  String get authRegisterTab => 'Registrarse';

  @override
  String authRegisterSuccessWithEmail(String email) {
    return 'Cuenta creada correctamente. Ahora puedes iniciar sesión con $email.';
  }

  @override
  String get loginWelcomeTitle => 'Bienvenido a BuildRank';

  @override
  String get loginWelcomeSubtitle =>
      'Gestiona tu edificio, consulta el ranking energético y sigue tu evolución desde un único lugar.';

  @override
  String get loginCardTitle => 'Iniciar sesión';

  @override
  String get loginCardSubtitle =>
      'Accede con tu cuenta para ver la información de tu edificio.';

  @override
  String get emailLabel => 'Correo electrónico';

  @override
  String get emailHint => 'nombre@ejemplo.com';

  @override
  String get passwordLabel => 'Contraseña';

  @override
  String get loginForgotPassword => '¿Has olvidado la contraseña?';

  @override
  String get loginButton => 'Entrar';

  @override
  String get loginGoogleButton => 'Continuar con Google';

  @override
  String get loginMissingFieldsError =>
      'Debes rellenar el correo y la contraseña.';

  @override
  String get registerTitle => 'Crear una cuenta';

  @override
  String get registerSubtitle => 'Empieza hoy el seguimiento de tu edificio';

  @override
  String get registerCardTitle => 'Regístrate';

  @override
  String get registerCardSubtitle =>
      'Crea tu cuenta para empezar a gestionar edificios.';

  @override
  String get registerRoleHeader => 'SELECCIONA TU ROL';

  @override
  String get registerRoleAdmin => 'Admin.\nfinca';

  @override
  String get registerRoleOwner => 'Propietario';

  @override
  String get registerRoleTenant => 'Inquilino';

  @override
  String get firstNameLabel => 'Nombre';

  @override
  String get lastNameLabel => 'Apellidos';

  @override
  String get confirmPasswordLabel => 'Confirmar contraseña';

  @override
  String get registerAcceptTermsPrefix => 'Acepto los ';

  @override
  String get registerTermsOfService => 'Términos del Servicio';

  @override
  String get registerAcceptTermsMiddle => ' y la ';

  @override
  String get registerPrivacyPolicy => 'Política de Privacidad';

  @override
  String get registerCreateAccountButton => 'Crear la cuenta de BuildRank';

  @override
  String get registerGoogleButton => 'Crear cuenta con Google';

  @override
  String get registerMissingFieldsError => 'Debes rellenar todos los campos.';

  @override
  String get registerPasswordsMismatchError => 'Las contraseñas no coinciden.';

  @override
  String get registerAcceptTermsError =>
      'Debes aceptar los términos y condiciones.';

  @override
  String get registerSuccessInline =>
      'Cuenta creada correctamente. Ahora ya puedes iniciar sesión.';

  @override
  String get registerSuccessSnackBar => 'Registro completado correctamente.';

  @override
  String get passwordResetAppBarTitle => 'Recuperar contraseña';

  @override
  String get passwordResetRequestTitle => 'Recupera la contraseña';

  @override
  String get passwordResetConfirmTitle => 'Crea una nueva contraseña';

  @override
  String get passwordResetRequestSubtitle =>
      'Escribe el correo asociado a tu cuenta y pega el enlace recibido por email.';

  @override
  String get passwordResetConfirmSubtitle =>
      'Introduce una nueva contraseña para tu cuenta.';

  @override
  String get passwordResetSendInstructions => 'Enviar instrucciones';

  @override
  String get passwordResetHaveLinkTitle => '¿Ya tienes el enlace?';

  @override
  String get passwordResetHaveLinkBody =>
      'Pega aquí el enlace recibido por email. BuildRank extraerá automáticamente el uid y el token.';

  @override
  String get passwordResetLinkLabel => 'Enlace de recuperación';

  @override
  String get passwordResetLinkHint =>
      'https://.../reset-password?uid=...&token=...';

  @override
  String get passwordResetContinueWithLink => 'Continuar con el enlace';

  @override
  String get newPasswordLabel => 'Nueva contraseña';

  @override
  String get confirmNewPasswordLabel => 'Confirmar nueva contraseña';

  @override
  String get passwordResetSubmit => 'Restablecer contraseña';

  @override
  String get passwordResetPasteAnotherLink => 'Volver a pegar otro enlace';

  @override
  String get passwordResetEmailRequiredError =>
      'Introduce tu correo electrónico.';

  @override
  String get passwordResetRequestSuccess =>
      'Si el correo existe, recibirás un enlace para restablecer la contraseña. Pégalo aquí cuando lo tengas.';

  @override
  String get passwordResetLinkRequiredError =>
      'Pega el enlace de recuperación recibido por email.';

  @override
  String get passwordResetInvalidLinkError =>
      'No se han podido encontrar los parámetros uid y token dentro del enlace.';

  @override
  String get passwordResetLinkValidatedSuccess =>
      'Enlace validado. Introduce la nueva contraseña.';

  @override
  String get passwordResetPasswordRequiredError =>
      'Introduce y confirma la nueva contraseña.';

  @override
  String get passwordResetSuccessSnackBar =>
      'Contraseña restablecida correctamente.';

  @override
  String get legalTermsTitle => 'Términos del Servicio';

  @override
  String get legalPrivacyTitle => 'Política de Privacidad';

  @override
  String get legalTermsSubtitle => 'Condiciones básicas de uso de BuildRank';

  @override
  String get legalPrivacySubtitle =>
      'Cómo BuildRank trata los datos dentro del MVP';

  @override
  String get legalInfoNotice =>
      'BuildRank es un proyecto académico en fase MVP. Este texto resume las condiciones y criterios de privacidad aplicables a la demo y al uso del prototipo.';

  @override
  String get legalTermsSection1Title => '1. Finalidad del servicio';

  @override
  String get legalTermsSection1Body =>
      'BuildRank es una aplicación orientada a promover un uso más responsable y sostenible de la energía en edificios residenciales. Permite consultar información de edificios, visualizar indicadores, comparar resultados, simular mejoras y participar en funcionalidades comunitarias según el rol del usuario.';

  @override
  String get legalTermsSection2Title =>
      '2. Carácter orientativo de la información';

  @override
  String get legalTermsSection2Body =>
      'Las puntuaciones, rankings, clasificaciones energéticas estimadas, simulaciones, Heat Risk Index e insignias tienen finalidad informativa y orientativa. No constituyen certificaciones energéticas oficiales, informes técnicos profesionales ni recomendaciones de ingeniería concluyentes.';

  @override
  String get legalTermsSection3Title => '3. Uso responsable de la aplicación';

  @override
  String get legalTermsSection3Body =>
      'El usuario se compromete a utilizar BuildRank de manera responsable, a no introducir datos falsos o de terceros sin autorización y a respetar las normas de convivencia en votaciones, chats y espacios comunitarios.';

  @override
  String get legalTermsSection4Title => '4. Roles y permisos';

  @override
  String get legalTermsSection4Body =>
      'Las acciones disponibles pueden variar según el rol del usuario y su relación con un edificio. Algunas acciones, como gestionar edificios, validar solicitudes, recalcular insignias o administrar votaciones, pueden estar limitadas a administradores autorizados.';

  @override
  String get legalTermsSection5Title =>
      '5. Datos abiertos, datos manuales y estimaciones';

  @override
  String get legalTermsSection5Body =>
      'BuildRank puede combinar datos abiertos, datos introducidos manualmente y resultados estimados. Cuando un dato sea incompleto, estimado o pendiente de verificación, la aplicación intentará indicarlo de manera clara para que el usuario pueda interpretarlo correctamente.';

  @override
  String get legalTermsSection6Title =>
      '6. Revisión humana y fuentes oficiales';

  @override
  String get legalTermsSection6Body =>
      'En caso de discrepancia sobre datos energéticos, documentación, titularidad o permisos, la revisión humana y las fuentes oficiales prevalecen sobre cualquier resultado automático o estimado mostrado por el sistema.';

  @override
  String get legalPrivacySection1Title => '1. Datos tratados';

  @override
  String get legalPrivacySection1Body =>
      'BuildRank puede tratar datos de cuenta, rol de usuario, edificios asociados, viviendas vinculadas, solicitudes, votaciones, simulaciones, notificaciones y acciones de validación o administración.';

  @override
  String get legalPrivacySection2Title => '2. Finalidad del tratamiento';

  @override
  String get legalPrivacySection2Body =>
      'Los datos se utilizan para autenticar usuarios, gestionar edificios, aplicar permisos, mostrar indicadores, facilitar participación comunitaria, registrar acciones sensibles y mejorar la calidad de los datos del sistema.';

  @override
  String get legalPrivacySection3Title => '3. Minimización de datos';

  @override
  String get legalPrivacySection3Body =>
      'BuildRank intenta mostrar solo la información necesaria para cada funcionalidad. Por ejemplo, las vistas generales como el mapa no deberían exponer emails, documentos, viviendas o datos personales innecesarios.';

  @override
  String get legalPrivacySection4Title => '4. Documentos y verificaciones';

  @override
  String get legalPrivacySection4Body =>
      'En procesos de verificación, los documentos aportados pueden contener información sensible. Estos archivos deben utilizarse solo para revisar la evidencia necesaria y no para finalidades ajenas al proceso de validación.';

  @override
  String get legalPrivacySection5Title => '5. Trazabilidad y auditoría';

  @override
  String get legalPrivacySection5Body =>
      'Las acciones sensibles pueden quedar registradas con finalidades de seguridad, auditoría e integridad del sistema. Esta trazabilidad ayuda a explicar cambios relevantes sobre permisos, validaciones, edificios, votaciones o puntuaciones.';

  @override
  String get legalPrivacySection6Title =>
      '6. Uso de IA y decisiones automáticas';

  @override
  String get legalPrivacySection6Body =>
      'Cualquier soporte automatizado o basado en IA, si existe, debe entenderse como una ayuda para detectar incoherencias o puntos de revisión. No sustituye la revisión humana ni debería aprobar documentos, asignar roles o modificar puntuaciones de manera autónoma.';

  @override
  String get legalPrivacySection7Title => '7. Responsabilidad del usuario';

  @override
  String get legalPrivacySection7Body =>
      'El usuario debe evitar subir información innecesaria o documentos de terceros sin autorización. Las claves, tokens y credenciales no deben compartirse ni introducirse fuera de los formularios previstos por la aplicación.';

  @override
  String get accountBlockedTitle => 'Cuenta bloqueada';

  @override
  String get accountBlockedBody =>
      'Tu cuenta ha sido bloqueada permanentemente. Contacta con el administrador para obtener más información.';

  @override
  String get accountSuspendedTitle => 'Cuenta suspendida';

  @override
  String get accountSuspendedBody =>
      'Tu cuenta está suspendida temporalmente. Contacta con el administrador para obtener más información.';

  @override
  String get accountBackToLogin => 'Volver al inicio de sesión';
}
