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
  String get commonRetry => 'Volver a intentarlo';

  @override
  String get commonCancel => 'Cancelar';

  @override
  String get commonConfirm => 'Confirmar';

  @override
  String get commonBack => 'Volver';

  @override
  String get commonRefresh => 'Actualizar';

  @override
  String commonErrorWithValue(String error) {
    return 'Error: $error';
  }

  @override
  String get adminUserManagementTitle => 'Gestión de usuarios';

  @override
  String get notificationsTitle => 'Notificaciones';

  @override
  String get notificationsMarkAll => 'Marcar todas';

  @override
  String get notificationsLoadError =>
      'No se han podido cargar las notificaciones.';

  @override
  String get notificationsEmpty => 'No tienes notificaciones';

  @override
  String get notificationsNow => 'Ahora mismo';

  @override
  String notificationsMinutesAgo(int count) {
    return 'Hace $count min';
  }

  @override
  String notificationsHoursAgo(int count) {
    return 'Hace $count h';
  }

  @override
  String notificationsDaysAgo(int count) {
    return 'Hace $count días';
  }

  @override
  String get myChatsTitle => 'Mis chats';

  @override
  String get myChatsConnectionError => 'No se ha podido conectar al chat.';

  @override
  String get myChatsReconnect => 'Reconectar';

  @override
  String get myChatsNoMessages => 'Sin mensajes';

  @override
  String get myChatsEmpty => 'No tienes ningún chat activo.';

  @override
  String get myChatsDirectDescription =>
      'Conversación directa o canal compartido entre administradores.';

  @override
  String get chatFallbackName => 'Chat';

  @override
  String get chatDirectDescription =>
      'Conversación directa entre administradores de finca.';

  @override
  String get chatUserNotConnectedError =>
      'Usuario no conectado. Cierra sesión y vuelve a entrar.';

  @override
  String chatConnectionError(String error) {
    return 'Error al conectar el chat:\n$error';
  }

  @override
  String get homeRankingTitle => 'Ranking';

  @override
  String get homeProfileTitle => 'Perfil';

  @override
  String get homeGreeting => 'Buenos días';

  @override
  String get homeSummaryTitle => 'Resumen de tu edificio';

  @override
  String get homeSummarySubtitle =>
      'Consulta el estado energético actual, tu posición en la liga y las próximas acciones recomendadas.';

  @override
  String get homeDemoBuildingName => 'Biblioteca Central';

  @override
  String get homeDemoBuildingSubtitle => 'Edificio monitorizado esta semana';

  @override
  String get homeMetricConsumption => 'Consumo';

  @override
  String get homeMetricPosition => 'Posición';

  @override
  String get homeMetricImprovement => 'Mejora';

  @override
  String get homeKeyIndicatorsTitle => 'Indicadores clave';

  @override
  String get homeTodayConsumptionTitle => 'Consumo estimado de hoy';

  @override
  String get homeTodayConsumptionSubtitle => '18 kWh · un 6% menos que ayer';

  @override
  String get homeLeaguePositionTitle => 'Posición en la liga';

  @override
  String get homeLeaguePositionSubtitle => '3.ª posición de 12 edificios';

  @override
  String get homeRecommendationTitle => 'Recomendación principal';

  @override
  String get homeRecommendationSubtitle =>
      'Reducir la climatización por la tarde';

  @override
  String get homeQuickActionsTitle => 'Acciones rápidas';

  @override
  String get homeBuildingTitle => 'Edificio';

  @override
  String get homeImprovementsTitle => 'Mejoras';

  @override
  String get homeCommunityTitle => 'Comunidad';

  @override
  String get homeWeeklyGoalTitle => 'Objetivo semanal';

  @override
  String get homeWeeklyGoalBody =>
      'Mantened el consumo por debajo de 130 kWh para consolidaros dentro del top 3.';

  @override
  String get twinTitle => 'Twin Building';

  @override
  String get twinIntroTitle => 'Administradores de edificios comparables';

  @override
  String twinIntroBody(String buildingName) {
    return 'Contacta con administradores de finca de edificios similares a $buildingName para compartir experiencias sobre mejoras energéticas, votaciones y gestión comunitaria.';
  }

  @override
  String get twinEmptyTitle =>
      'No hay administradores comparables disponibles.';

  @override
  String get twinEmptyBody =>
      'Puede que el edificio aún no tenga un grupo comparable o que no haya otros edificios administrados dentro del mismo grupo.';

  @override
  String twinChannelName(String address) {
    return 'Twin Building con $address';
  }

  @override
  String twinChannelDescription(String adminName, String address) {
    return 'Conversación con $adminName, administrador de $address.';
  }

  @override
  String twinPoints(String points) {
    return '$points pts';
  }

  @override
  String get twinTypologyFallback => 'Tipología';

  @override
  String twinClimateZone(String zone) {
    return 'Zona $zone';
  }

  @override
  String twinAdminLine(String adminName) {
    return 'Admin: $adminName';
  }

  @override
  String get twinOpenChat => 'Abrir chat';

  @override
  String get editProfileTitle => 'Editar perfil';

  @override
  String get editProfilePersonalDataTitle => 'Datos personales';

  @override
  String get editProfilePersonalDataSubtitle =>
      'Actualiza la información básica de tu cuenta. El rol no se puede modificar desde esta pantalla.';

  @override
  String get editProfileRoleLabel => 'Rol';

  @override
  String get editProfileSaving => 'Guardando...';

  @override
  String get editProfileSaveChanges => 'Guardar cambios';

  @override
  String get editProfileFirstNameRequired => 'El nombre es obligatorio.';

  @override
  String get editProfileLastNameRequired => 'Los apellidos son obligatorios.';

  @override
  String get editProfileEmailRequired =>
      'El correo electrónico es obligatorio.';

  @override
  String get editProfileEmailInvalid =>
      'Introduce un correo electrónico válido.';

  @override
  String get editProfileSuccess => 'Perfil actualizado correctamente.';

  @override
  String get votesCreateTitle => 'Nueva votación';

  @override
  String get votesCreateAction => 'Crear';

  @override
  String get votesTitleLabel => 'Título';

  @override
  String get votesTitleHint => 'Escribe el título de la votación';

  @override
  String get votesTitleRequiredError => 'El título es obligatorio.';

  @override
  String get votesTitleMinLengthError =>
      'El título debe tener al menos 4 caracteres.';

  @override
  String get votesDescriptionOptionalLabel => 'Descripción (opcional)';

  @override
  String get votesDescriptionHint => 'Explica el contexto de la votación...';

  @override
  String get votesDeadlineOptionalLabel => 'Fecha límite (opcional)';

  @override
  String get votesNoDeadline => 'Sin fecha límite';

  @override
  String get votesOptionsLabel => 'Opciones';

  @override
  String get votesOptionsLimitHint => 'Mínimo 2 · Máximo 8';

  @override
  String get votesAddOption => 'Añadir opción';

  @override
  String votesOptionHint(int number) {
    return 'Opción $number';
  }

  @override
  String get votesOptionRequiredError => 'Esta opción no puede estar vacía.';

  @override
  String get votesDuplicateOptionsError =>
      'Hay opciones duplicadas. Revísalas.';

  @override
  String get pendingRequestsTitle => 'Solicitudes pendientes';

  @override
  String pendingRequestsIntro(String buildingTitle) {
    return 'Aquí puedes revisar y validar las solicitudes de unión como residente para $buildingTitle.';
  }

  @override
  String pendingRequestsCount(int count) {
    return '$count pendientes';
  }

  @override
  String get pendingRequestsEmptyTitle => 'No hay solicitudes pendientes';

  @override
  String get pendingRequestsEmptyBody =>
      'Cuando otros usuarios pidan unirse a este edificio, aparecerán aquí.';

  @override
  String get pendingRequestsUnexpectedError =>
      'Se ha producido un error inesperado.';

  @override
  String get pendingRequestsForbidden =>
      'Solo el administrador de finca puede gestionar las solicitudes pendientes.';

  @override
  String pendingRequestsAccepted(String name) {
    return 'Se ha aceptado la solicitud de $name.';
  }

  @override
  String pendingRequestsRejected(String name) {
    return 'Se ha rechazado la solicitud de $name.';
  }

  @override
  String get pendingRequestsResidentChip => 'Residente';

  @override
  String get pendingRequestsRequestTypeLabel => 'Tipo de solicitud';

  @override
  String get pendingRequestsResidentJoinType => 'Unión como residente';

  @override
  String get pendingRequestsDateLabel => 'Fecha';

  @override
  String get pendingRequestsCadastralReferenceLabel => 'Referencia catastral';

  @override
  String get pendingRequestsHomeLabel => 'Vivienda';

  @override
  String get pendingRequestsSurfaceLabel => 'Superficie';

  @override
  String get pendingRequestsReject => 'Rechazar';

  @override
  String get pendingRequestsAccept => 'Aceptar';

  @override
  String get pendingRequestsNotSpecified => 'No especificado';

  @override
  String pendingRequestsFloorDoor(String floor, String door) {
    return 'Planta $floor · Puerta $door';
  }

  @override
  String pendingRequestsFloor(String floor) {
    return 'Planta $floor';
  }

  @override
  String pendingRequestsDoor(String door) {
    return 'Puerta $door';
  }

  @override
  String get chatReasonOptionalHint => 'Motivo (opcional)';

  @override
  String get chatConfirmActionTitle => 'Confirmar acción';

  @override
  String get chatDurationLabel => 'Duración';

  @override
  String get chatDurationIndefinite => 'Indefinido';

  @override
  String get chatDuration30Minutes => '30 minutos';

  @override
  String get chatDuration1Hour => '1 hora';

  @override
  String get chatDuration6Hours => '6 horas';

  @override
  String get chatDuration24Hours => '24 horas';

  @override
  String get chatReportMessage => 'Reportar mensaje';

  @override
  String get chatHideMessage => 'Ocultar mensaje';

  @override
  String get chatDeleteMyMessage => 'Eliminar mi mensaje';

  @override
  String get chatDeleteMessage => 'Eliminar mensaje';

  @override
  String get chatRestoreMessage => 'Restaurar mensaje';

  @override
  String get chatDismissReport => 'Descartar reporte';

  @override
  String get chatDeleteOwnMessageConfirm =>
      '¿Seguro que quieres eliminar tu mensaje?';

  @override
  String get chatDeleteOtherMessageConfirm =>
      '¿Eliminar el mensaje de este usuario?';

  @override
  String get chatMessageReported => 'Mensaje reportado.';

  @override
  String get chatMessageHidden => 'Mensaje ocultado.';

  @override
  String get chatMessageDeleted => 'Mensaje eliminado.';

  @override
  String get chatMessageRestored => 'Mensaje restaurado.';

  @override
  String get chatReportDismissed => 'Reporte descartado.';

  @override
  String get chatWarnUser => 'Advertir usuario';

  @override
  String get chatMuteUser => 'Silenciar usuario';

  @override
  String get chatBanFromChannel => 'Expulsar del canal';

  @override
  String get chatGlobalBan => 'Expulsión global';

  @override
  String get chatShadowBan => 'Shadow ban';

  @override
  String get chatWarn => 'Advertir';

  @override
  String get chatMute => 'Silenciar';

  @override
  String get chatUnmute => 'Quitar silencio';

  @override
  String get chatReadmitToChannel => 'Readmitir al canal';

  @override
  String get chatLiftGlobalBan => 'Levantar expulsión global';

  @override
  String get chatLiftShadowBan => 'Levantar shadow ban';

  @override
  String get chatWarningSent => 'Advertencia enviada.';

  @override
  String get chatUserMuted => 'Usuario silenciado.';

  @override
  String get chatUserUnmuted => 'Silencio retirado.';

  @override
  String get chatUserBannedFromChannel => 'Usuario expulsado del canal.';

  @override
  String get chatUserUnbannedFromChannel => 'Usuario readmitido en el canal.';

  @override
  String get chatUserGloballyBanned => 'Usuario expulsado globalmente.';

  @override
  String get chatGlobalUnbanConfirm =>
      '¿Levantar la expulsión global de este usuario?';

  @override
  String get chatGlobalBanLifted => 'Expulsión global levantada.';

  @override
  String get chatShadowBanApplied => 'Shadow ban aplicado.';

  @override
  String get chatShadowUnbanConfirm =>
      '¿Levantar el shadow ban de este usuario?';

  @override
  String get chatShadowBanLifted => 'Shadow ban levantado.';

  @override
  String chatCommunityTitle(String buildingName) {
    return 'Comunidad de $buildingName';
  }

  @override
  String get chatCommunitySubtitle =>
      'Habla con los miembros de este edificio sobre mejoras, incidencias y propuestas.';

  @override
  String get chatContactSimilarAdmins => 'Contactar admins similares';

  @override
  String get mapTitle => 'Mapa de edificios';

  @override
  String get mapSearchHint => 'Busca por calle, barrio o código postal';

  @override
  String get mapSearchTooltip => 'Buscar';

  @override
  String get mapFilterAll => 'Todos';

  @override
  String mapFilterMinScore(int score) {
    return '≥ $score';
  }

  @override
  String get mapNoValidCoordinates =>
      'No hay edificios con coordenadas válidas para mostrar.';

  @override
  String mapShownOfCount(int shown, int count) {
    return '$shown de $count edificios mostrados';
  }

  @override
  String mapShownCount(int shown) {
    return '$shown edificios en el mapa';
  }

  @override
  String get mapLoadError => 'No se ha podido cargar el mapa.';

  @override
  String get profileUserFallback => 'Usuario';

  @override
  String get profileRoleAdmin => 'Administrador de finca';

  @override
  String get profileRoleOwner => 'Propietario';

  @override
  String get profileRoleTenant => 'Inquilino';

  @override
  String get profileAdminBuildingsTitle => 'Edificios administrados';

  @override
  String get profileOwnerBuildingsTitle => 'Edificios de mis viviendas';

  @override
  String get profileTenantBuildingsTitle => 'Edificios vinculados';

  @override
  String get profileAccessibleBuildingsTitle => 'Edificios accesibles';

  @override
  String get profileEmptyAdminBuildings =>
      'Aún no tienes ningún edificio asignado como administrador de finca. Puedes crear uno con el formulario de alta.';

  @override
  String get profileEmptyOwnerBuildings =>
      'Aún no tienes viviendas vinculadas a tu cuenta. Cuando un administrador te asigne una vivienda, aquí verás el edificio correspondiente.';

  @override
  String get profileEmptyTenantBuildings =>
      'Aún no tienes ninguna vivienda vinculada a tu cuenta. Cuando se te asigne una vivienda, aquí verás el edificio correspondiente.';

  @override
  String get profileEmptyAccessibleBuildings =>
      'Aún no hay edificios disponibles para esta cuenta.';

  @override
  String get profileBuildingCreated => 'Edificio creado correctamente.';

  @override
  String get profileLogoutTooltip => 'Cerrar sesión';

  @override
  String get profileReportsSoon =>
      'Los informes para juntas aún no están disponibles en este MVP.';

  @override
  String get profileCreateBuilding => 'Crear edificio';

  @override
  String get profileReports => 'Informes';

  @override
  String get profileNonAdminInfo =>
      'Esta cuenta puede consultar los edificios vinculados a sus viviendas. La creación y administración de edificios queda reservada a los administradores de finca.';

  @override
  String get profileMapSubtitle =>
      'Visualiza los edificios registrados y consulta sus estadísticas principales.';

  @override
  String get profileLinkNewBuilding => 'Vincular nuevo edificio';

  @override
  String get profileLoadError => 'No se ha podido cargar el perfil.';

  @override
  String get profileMetricBuildings => 'EDIFICIOS';

  @override
  String get profileMetricLinks => 'VÍNCULOS';

  @override
  String get profileMetricAvgRanking => 'RANKING MEDIO';

  @override
  String get profileMetricProgress => 'PROGRESO';

  @override
  String get profileSeasonRestart => 'Próximo reinicio de temporada';

  @override
  String profileSeasonDaysLeft(int days) {
    return 'Quedan $days días';
  }

  @override
  String get profileBadgesTitle => 'Insignias de edificios';

  @override
  String get profileBadgesBody =>
      'Las insignias reales se muestran dentro de la ficha de cada edificio. Cuando un edificio cumpla criterios de puntuación, calidad de datos o mejora, aparecerán en su detalle.';

  @override
  String profileBuildingNumber(int id) {
    return 'Edificio #$id';
  }

  @override
  String get profileLocationUnavailable => 'Localización no disponible';

  @override
  String get profileInactive => 'Inactivo';

  @override
  String get profileActive => 'Activo';

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

  @override
  String get appName => 'BuildRank';

  @override
  String get commonUnavailable => 'No disponible';

  @override
  String get commonUnknownError => 'Error desconegut.';

  @override
  String get commonRequiredField => 'Camp obligatori';

  @override
  String get commonInvalidNumber => 'Introdueix un n?mero v?lid';

  @override
  String get commonGreaterThanZero => 'Ha de ser superior a 0';

  @override
  String get commonContinue => 'Continua ?';

  @override
  String get mainNavHome => 'Inicio';

  @override
  String get mainNavLeagues => 'Ligas';

  @override
  String get mainNavSimulate => 'Simula';

  @override
  String get mainNavChat => 'Chat';

  @override
  String get mainNavVotes => 'Votaciones';

  @override
  String get habitatgeCadastralReference => 'Refer?ncia cadastral';

  @override
  String get habitatgeFloor => 'Planta';

  @override
  String get habitatgeDoor => 'Porta';

  @override
  String get habitatgeSurface => 'Superf?cie (m?)';

  @override
  String get addExistingAppBarTitle => 'Vincular edifici';

  @override
  String get addExistingTitle => 'Vincula\'t a un edifici ja existent';

  @override
  String get addExistingAdminSubtitle =>
      'Quan seleccionis un edifici, s\'enviar? una sol?licitud per vincular-te com a administrador de finca.';

  @override
  String get addExistingResidentSubtitle =>
      'Quan seleccionis un edifici, s\'enviar? una sol?licitud d\'uni? a l\'administrador de finca perqu? et pugui validar com a resident.';

  @override
  String get addExistingLocationSection => 'Localitzaci?';

  @override
  String get addExistingSearchHint => 'Escriu el carrer del teu edifici...';

  @override
  String get addExistingMinSearch =>
      'Introdueix almenys 3 car?cters per comen?ar la cerca.';

  @override
  String get addExistingResultsTitle => 'Resultats';

  @override
  String get addExistingNoResults =>
      'No s\'ha trobat cap edifici amb aquesta adre?a.';

  @override
  String addExistingSelectedBuilding(String buildingName, String role) {
    return 'Seleccionat: $buildingName ? Rol sol?licitat: $role';
  }

  @override
  String get addExistingClosedRequests =>
      'Aquest edifici no admet noves sol?licituds d?uni? en aquest moment.';

  @override
  String get addExistingHabitatgeTitle => 'Dades de l?habitatge';

  @override
  String get addExistingHabitatgeSubtitle =>
      'Completa les dades del teu habitatge per enviar la sol?licitud d?uni?.';

  @override
  String get addExistingSubmit => 'Enviar sol?licitud';

  @override
  String get addExistingAdminRequestSent =>
      'S\'ha enviat la sol?licitud per vincular-te com a administrador de finca.';

  @override
  String get addExistingResidentRequestSent =>
      'S\'ha enviat la sol?licitud d\'uni? a l\'administrador de finca.';

  @override
  String get rankingLoadError => 'No s?ha pogut carregar el r?nquing.';

  @override
  String get rankingLoadMoreError => 'No s?han pogut carregar m?s competidors.';

  @override
  String get rankingProgressLoadError =>
      'No s?ha pogut carregar l?evoluci? de progr?s.';

  @override
  String get rankingScopeLeague => 'La meva lliga';

  @override
  String get rankingScopeComparableLeague => 'Similars lliga';

  @override
  String get rankingScopeComparableSeason => 'Similars temporada';

  @override
  String get rankingUnavailableTitle => 'R?nquing no disponible';

  @override
  String get rankingLoadErrorTitle => 'No s?ha pogut carregar el r?nquing';

  @override
  String rankingActiveSeason(String seasonName) {
    return 'Temporada activa: $seasonName';
  }

  @override
  String rankingProgressToTop(int target) {
    return 'Progr?s cap al Top $target';
  }

  @override
  String rankingPointsProgress(String currentPoints, String targetPoints) {
    return '$currentPoints / $targetPoints punts';
  }

  @override
  String get rankingSeasonPendingCalendar => 'Temporada pendent de calendari.';

  @override
  String rankingCurrentPosition(int position) {
    return 'Posici? actual: #$position';
  }

  @override
  String get rankingComparisonPeriod => 'Per?ode de comparaci?';

  @override
  String rankingLastSeasons(int count) {
    return '?ltimes $count';
  }

  @override
  String rankingTopTarget(int target) {
    return 'Top $target';
  }

  @override
  String get rankingBadgesEarned => 'Ins?gnies aconseguides';

  @override
  String get rankingViewAll => 'Veure-ho tot';

  @override
  String get rankingBadgeSolarMaster => 'Mestre solar';

  @override
  String get rankingBadgeDateOct25 => 'Oct 25';

  @override
  String get rankingBadgeMaxSavings => 'M?xim estalvi';

  @override
  String get rankingBadgeDateNov25 => 'Nov 25';

  @override
  String get rankingBadgeResilient => 'Resilient';

  @override
  String get rankingBadgeDateDec25 => 'Dec 25';

  @override
  String get rankingBadgeTest => 'Prova';

  @override
  String get rankingBadgeDateJan26 => 'Gen 26';

  @override
  String get rankingSearchHint => 'Cerca per carrer...';

  @override
  String get rankingNoCompetitors =>
      'No s?ha trobat cap competidor amb aquests filtres.';

  @override
  String get rankingLoadMore => 'Carrega m?s competidors';

  @override
  String get rankingNoProgressHistory =>
      'Encara no hi ha historial de progr?s per aquest edifici.';

  @override
  String get rankingSeasonProgressTitle => 'Progr?s de temporades';

  @override
  String rankingSeasonProgressSubtitle(int count) {
    return 'Evoluci? real durant les ?ltimes $count temporades disponibles.';
  }

  @override
  String rankingProgressForBuilding(String buildingName) {
    return 'Progr?s de $buildingName';
  }

  @override
  String rankingProgressModalSubtitle(int count) {
    return 'Evoluci? de puntuaci? durant les ?ltimes $count temporades.';
  }

  @override
  String rankingAccumulatedImprovement(int delta) {
    return 'Millora acumulada: +$delta punts';
  }

  @override
  String rankingPointsRange(int startPoints, int currentPoints) {
    return '$startPoints ? $currentPoints punts';
  }

  @override
  String rankingDeltaPoints(String deltaText) {
    return '$deltaText pts';
  }

  @override
  String get rankingViewDetail => 'Veure detall';

  @override
  String get buildingCardDetailLoadError =>
      'No s?ha pogut carregar el detall de l?edifici.';

  @override
  String get buildingCardBadgesRecalculated =>
      'Ins?gnies recalculades correctament.';

  @override
  String get buildingCardBadgesLoadError =>
      'No s?han pogut carregar les ins?gnies.';

  @override
  String get buildingCardLoadError => 'No s?ha pogut carregar l?edifici.';

  @override
  String buildingCardClimateZone(String zone) {
    return 'Zona clim?tica $zone';
  }

  @override
  String get buildingCardScoreExcellent => 'EXCEL?LENT';

  @override
  String get buildingCardScoreGood => 'BO';

  @override
  String get buildingCardScoreImprove => 'MILLORABLE';

  @override
  String get buildingCardScorePriority => 'PRIORITARI';

  @override
  String get buildingCardEstimatedRating => 'QUALIFICACI? ESTIMADA';

  @override
  String buildingCardPendingData(String items) {
    return 'Dades pendents: $items';
  }

  @override
  String get buildingCardBaseScore => 'Puntuaci? base BuildRank';

  @override
  String get buildingCardPerformance => 'RENDIMENT';

  @override
  String get buildingCardInitialData => 'Dades inicials';

  @override
  String get buildingCardSurface => 'SUPERF?CIE';

  @override
  String get buildingCardFloors => 'PLANTES';

  @override
  String get buildingCardOrientation => 'ORIENTACI?';

  @override
  String get buildingCardBadgesTitle => 'INS?GNIES DE L?EDIFICI';

  @override
  String get buildingCardRecalculate => 'Recalcular';

  @override
  String get buildingCardNoBadges =>
      'Aquest edifici encara no t? ins?gnies assignades. Es mostraran quan compleixi alguna fita.';

  @override
  String get buildingCardRecommendedActions => 'ACCIONS RECOMANADES';

  @override
  String get buildingCardActionSimulationTitle => 'Executa simulaci?';

  @override
  String get buildingCardActionSimulationSubtitle =>
      'Prova escenaris de millora per aquest edifici';

  @override
  String get buildingCardActionVoteTitle => 'Votaci? de la comunitat';

  @override
  String get buildingCardActionVoteSubtitle =>
      'Funcionalitat preparada per futures propostes';

  @override
  String get buildingCardActionReportTitle => 'Informe de junta (properament)';

  @override
  String get buildingCardActionReportSubtitle =>
      'La generaci? d?informes encara no est? disponible en aquest MVP';

  @override
  String get buildingCardActionManageRequestsTitle =>
      'Gestionar sol?licituds pendents';

  @override
  String get buildingCardActionManageRequestsSubtitle =>
      'Revisa i valida noves peticions d?uni? a l?edifici';

  @override
  String get buildingCardActionEditHabitatgeTitle => 'Editar el meu habitatge';

  @override
  String get buildingCardActionEditHabitatgeSubtitle =>
      'Completa superf?cie, reforma i dades energ?tiques';

  @override
  String get buildingCardTabDetails => 'Detalls';

  @override
  String get buildingCardTabHistory => 'Historial';

  @override
  String get buildingCardTabDocuments => 'Documents';

  @override
  String get buildingCardHistoryUnavailableTitle =>
      'Historial encara no disponible';

  @override
  String get buildingCardHistoryUnavailableBody =>
      'En aquesta secci? es mostraran canvis de puntuaci?, validacions i simulacions guardades.';

  @override
  String get buildingCardDocumentsSoonTitle =>
      'Documents i informes (properament)';

  @override
  String get buildingCardDocumentsSoonBody =>
      'Aquesta secci? queda preparada per a una futura integraci? documental. En aquest MVP no es mostren documents ni informes generats.';

  @override
  String get buildingCardConstructionYear => 'ANY DE CONSTRUCCI?';

  @override
  String buildingCardFloorsCount(String count) {
    return '$count plantes';
  }

  @override
  String get buildingCardTypology => 'TIPOLOGIA';

  @override
  String get buildingCardRegulation => 'REGLAMENT';

  @override
  String get buildingCardNoLocation =>
      'Aquest edifici encara no t? localitzaci? associada.';

  @override
  String buildingCardLocationSummary(
    String street,
    String number,
    String neighborhood,
    String postalCode,
  ) {
    return 'Localitzaci?: $street, $number ? $neighborhood ? $postalCode';
  }

  @override
  String get buildingFormStreetMinChars =>
      'Escriu almenys 2 car?cters per cercar el carrer.';

  @override
  String buildingFormNoStreetFound(String query) {
    return 'No s?ha trobat cap carrer amb ?$query?.';
  }

  @override
  String get buildingFormStreetSuggestionsError =>
      'No s?han pogut carregar els suggeriments de carrers.';

  @override
  String get buildingFormPostalCodeRequired => 'El codi postal ?s obligatori.';

  @override
  String get buildingFormPostalCodeInvalid =>
      'El codi postal ha de tenir 5 d?gits.';

  @override
  String get buildingFormNeighborhoodRequired => 'El camp barri ?s obligatori.';

  @override
  String get buildingFormStreetRequired => 'El nom del carrer ?s obligatori.';

  @override
  String get buildingFormStreetSelectionRequired =>
      'Selecciona un carrer de la llista de suggeriments.';

  @override
  String get buildingFormNumberRequired => 'El n?mero ?s obligatori.';

  @override
  String get buildingFormNumberPositive =>
      'El n?mero del carrer ha de ser un enter positiu.';

  @override
  String buildingFormNumberOutOfRange(int minNumber, int maxNumber) {
    return 'El n?mero no est? dins del rang perm?s per aquest carrer ($minNumber-$maxNumber).';
  }

  @override
  String get buildingFormTypeRequired => 'Has de seleccionar una tipologia.';

  @override
  String get buildingFormConstructionYearRequired =>
      'L\'any de construcci? ?s obligatori.';

  @override
  String get buildingFormConstructionYearInteger =>
      'L\'any de construcci? ha de ser un n?mero enter.';

  @override
  String buildingFormConstructionYearRange(int currentYear) {
    return 'L\'any de construcci? ha d\'estar entre 1800 i $currentYear.';
  }

  @override
  String get buildingFormRegulationRequired =>
      'La normativa vigent ?s obligat?ria.';

  @override
  String get buildingFormFloorsRequired =>
      'El nombre de plantes ?s obligatori.';

  @override
  String get buildingFormFloorsPositive =>
      'El nombre de plantes ha de ser un enter positiu.';

  @override
  String get buildingFormSurfaceRequired =>
      'La superf?cie total ?s obligat?ria.';

  @override
  String get buildingFormSurfacePositive =>
      'La superf?cie total ha de ser un n?mero positiu.';

  @override
  String get buildingFormOrientationRequired =>
      'Has de seleccionar una orientaci? principal.';

  @override
  String get buildingFormDocumentsRequired =>
      'Cal adjuntar almenys un document de verificaci?.';

  @override
  String get buildingFormCreatedMissingId =>
      'L?edifici s?ha creat per? la resposta no cont? cap identificador reconeixible.';

  @override
  String get buildingFormSubmitSuccess =>
      'Edifici creat i documentaci? enviada. Queda pendent de revisi?.';

  @override
  String get buildingFormUnexpectedSaveError =>
      'S\'ha produ?t un error inesperat en desar l\'edifici.';

  @override
  String get buildingFormTypeResidential => 'Residencial';

  @override
  String get buildingFormTypeCommercial => 'Comercial';

  @override
  String get buildingFormTypeEducational => 'Educatiu';

  @override
  String get buildingFormTypeHealthcare => 'Sanitari';

  @override
  String get buildingFormTypeMixed => 'Mixt';

  @override
  String get buildingFormTypeResidentialSubtitle => 'Unifamiliar o pisos';

  @override
  String get buildingFormTypeCommercialSubtitle => 'Oficines, comer?...';

  @override
  String get buildingFormTypeEducationalSubtitle => 'Escoles';

  @override
  String get buildingFormTypeHealthcareSubtitle => 'Hospitals';

  @override
  String get buildingFormTypeMixedSubtitle => 'Usos combinats';

  @override
  String get orientationNorth => 'Nord';

  @override
  String get orientationSouth => 'Sud';

  @override
  String get orientationEast => 'Est';

  @override
  String get orientationWest => 'Oest';

  @override
  String get buildingFormNewBuildingChip => 'Nou Edifici';

  @override
  String get buildingFormTitle => 'Registra l\'edifici';

  @override
  String get buildingFormStep1Subtitle =>
      'Comencem per la ubicaci? de l\'edifici.';

  @override
  String get buildingFormStep2Subtitle => 'Ara completa la informaci? general.';

  @override
  String get buildingFormStep3Subtitle =>
      'Afegeix les dades t?cniques b?siques.';

  @override
  String get buildingFormStep4Subtitle =>
      'Adjunta la documentaci? per validar-te com a administrador de finca.';

  @override
  String get buildingFormLocationSection => 'UBICACI?';

  @override
  String get buildingFormPostalCodeLabel => 'Codi postal';

  @override
  String get buildingFormPostalCodeHint => 'p. ex., 08025';

  @override
  String get buildingFormOr => 'o';

  @override
  String get buildingFormNeighborhoodLabel => 'Barri';

  @override
  String get buildingFormNeighborhoodHint => 'p. ex., Sagrada Fam?lia';

  @override
  String get buildingFormStreetLabel => 'Nom del carrer';

  @override
  String get buildingFormStreetHint => 'Comen?a a escriure el carrer';

  @override
  String buildingFormStreetNumberRange(int minNumber, int maxNumber) {
    return 'N?meros $minNumber-$maxNumber';
  }

  @override
  String get buildingFormStreetRangeUnknown => 'Rang de numeraci? no informat';

  @override
  String get buildingFormNumberLabel => 'N?mero';

  @override
  String get buildingFormNumberHint => 'p. ex., 123';

  @override
  String get buildingFormLocationInfo =>
      'Selecciona un carrer de la llista de suggeriments. En desar, BuildRank crear? primer la localitzaci? i despr?s l?edifici vinculat al teu compte d?administrador.';

  @override
  String get buildingFormGeneralSection => 'INFORMACI? GENERAL';

  @override
  String get buildingFormRegisteredLocation => 'Ubicaci? registrada';

  @override
  String get buildingFormAddressLabel => 'Adre?a';

  @override
  String get buildingFormTypeLabel => 'Tipologia de l\'edifici';

  @override
  String get buildingFormConstructionYearLabel => 'Any de construcci?';

  @override
  String get buildingFormConstructionYearHint => 'p. ex., 1998';

  @override
  String get buildingFormRegulationLabel => 'Normativa vigent';

  @override
  String get buildingFormRegulationHint => 'p. ex., CTE';

  @override
  String get buildingFormTechnicalSection => 'DADES T?CNIQUES';

  @override
  String get buildingFormBuildingSummary => 'Resum de l?edifici';

  @override
  String get buildingFormConstructionYearSummaryLabel => 'Any construcci?';

  @override
  String get buildingFormRegulationSummaryLabel => 'Normativa';

  @override
  String get buildingFormFloorsLabel => 'Nombre de plantes';

  @override
  String get buildingFormFloorsHint => 'p. ex., 6';

  @override
  String get buildingFormSurfaceLabel => 'Superf?cie total (m?)';

  @override
  String get buildingFormSurfaceHint => 'p. ex., 850';

  @override
  String get buildingFormOrientationLabel => 'Orientaci? principal';

  @override
  String get buildingFormOrientationHint => 'Selecciona una orientaci?';

  @override
  String get buildingFormDocumentationSection => 'DOCUMENTACI?';

  @override
  String get buildingFormBuildingToVerify => 'Edifici a verificar';

  @override
  String get buildingFormSubmittingDocuments => 'Enviant documentaci?...';

  @override
  String get buildingFormSubmit => 'Crear edifici i enviar verificaci?';

  @override
  String get editHabitatgeNoLinkedHome =>
      'No s?ha trobat cap habitatge vinculat al teu usuari en aquest edifici.';

  @override
  String get editHabitatgeNoneSelected =>
      'No s?ha seleccionat cap habitatge per editar.';

  @override
  String get editHabitatgeMissingCadastralReference =>
      'L?habitatge seleccionat no t? refer?ncia cadastral.';

  @override
  String get editHabitatgeLoadError => 'No s?ha pogut carregar l?habitatge.';

  @override
  String get editHabitatgeSelectorTitle => 'Quin habitatge vols editar?';

  @override
  String editHabitatgeSelectorFloorDoor(String floor, String door) {
    return 'Planta $floor ? Porta $door';
  }

  @override
  String get editHabitatgeEnergyRequired =>
      'Camp obligatori si informes dades energ?tiques';

  @override
  String get editHabitatgeEnergyDateRequired =>
      'Cal informar la data d?entrada si informes dades energ?tiques';

  @override
  String get editHabitatgeSaveWithEnergySuccess =>
      'Dades de l?habitatge i dades energ?tiques actualitzades.';

  @override
  String get editHabitatgeSaveSuccess => 'Dades de l?habitatge actualitzades.';

  @override
  String get editHabitatgeAppBarTitle => 'Editar habitatge';

  @override
  String get editHabitatgeCannotEditTitle => 'No es pot editar l?habitatge';

  @override
  String get editHabitatgeSaveButton => 'Guardar dades';

  @override
  String get editHabitatgeIntroTitle => 'Completa les dades del teu habitatge';

  @override
  String get editHabitatgeIntroBody =>
      'Aquestes dades ajudaran a calcular millor la classificaci? estimada i la puntuaci? BuildRank de l?edifici.';

  @override
  String get editHabitatgeHomeDataTitle => 'Dades de l?habitatge';

  @override
  String get editHabitatgeHomeDataSubtitle =>
      'Informaci? b?sica de l?habitatge vinculat al teu compte.';

  @override
  String get editHabitatgeRenovationYear => 'Any reforma';

  @override
  String get editHabitatgeInvalidYear => 'Introdueix un any v?lid';

  @override
  String get editHabitatgeYearOutOfRange => 'L?any no ?s v?lid';

  @override
  String get editHabitatgeEnergyDataTitle => 'Dades energ?tiques';

  @override
  String get editHabitatgeEnergyDataSubtitle =>
      'Afegeix la informaci? disponible del certificat o estimaci? energ?tica.';

  @override
  String get editHabitatgeEnergyOptionalNotice =>
      'Les dades energ?tiques s?n opcionals. Si informes qualsevol camp d?aquesta secci?, haur?s d?omplir tots els camps obligatoris del certificat energ?tic.';

  @override
  String get editHabitatgeGlobalRating => 'Qualificaci? global';

  @override
  String get editHabitatgePrimaryEnergyConsumption => 'Consum energia prim?ria';

  @override
  String get editHabitatgeFinalEnergyConsumption => 'Consum energia final';

  @override
  String get editHabitatgeCo2Emissions => 'Emissions CO?';

  @override
  String get editHabitatgeAnnualEnergyCost => 'Cost anual energia (?)';

  @override
  String get editHabitatgeConsumptionByUse => 'Consums per ?s';

  @override
  String get editHabitatgeHeatingEnergy => 'Energia calefacci?';

  @override
  String get editHabitatgeCoolingEnergy => 'Energia refrigeraci?';

  @override
  String get editHabitatgeAcsEnergy => 'Energia ACS';

  @override
  String get editHabitatgeLightingEnergy => 'Energia enllumenament';

  @override
  String get editHabitatgeEmissionsByUse => 'Emissions per ?s';

  @override
  String get editHabitatgeHeatingEmissions => 'Emissions calefacci?';

  @override
  String get editHabitatgeCoolingEmissions => 'Emissions refrigeraci?';

  @override
  String get editHabitatgeAcsEmissions => 'Emissions ACS';

  @override
  String get editHabitatgeLightingEmissions => 'Emissions enllumenament';

  @override
  String get editHabitatgeCertificationEnvelope => 'Certificaci? i envolupant';

  @override
  String get editHabitatgeThermalInsulation => 'A?llament t?rmic';

  @override
  String get editHabitatgeWindowValue => 'Valor finestres';

  @override
  String get editHabitatgeCertificationTool => 'Eina certificaci?';

  @override
  String get editHabitatgeCertificationReason => 'Motiu certificaci?';

  @override
  String get editHabitatgeEnergyRenovation => 'Rehabilitaci? energ?tica';

  @override
  String get editHabitatgeSelectEntryDate => 'Seleccionar data d?entrada *';

  @override
  String editHabitatgeEntryDate(String date) {
    return 'Data d?entrada: $date';
  }
}
