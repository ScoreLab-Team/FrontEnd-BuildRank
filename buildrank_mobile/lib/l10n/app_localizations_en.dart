// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get authLanguageLabel => 'Language';

  @override
  String get authLanguageCatalan => 'Català';

  @override
  String get authLanguageSpanish => 'Español';

  @override
  String get authLanguageEnglish => 'English';

  @override
  String get authLoginTab => 'Log in';

  @override
  String get authRegisterTab => 'Sign up';

  @override
  String authRegisterSuccessWithEmail(String email) {
    return 'Account created successfully. You can now log in with $email.';
  }

  @override
  String get loginWelcomeTitle => 'Welcome to BuildRank';

  @override
  String get loginWelcomeSubtitle =>
      'Manage your building, check the energy ranking, and track your progress from one place.';

  @override
  String get loginCardTitle => 'Log in';

  @override
  String get loginCardSubtitle =>
      'Access your account to view your building information.';

  @override
  String get emailLabel => 'Email';

  @override
  String get emailHint => 'name@example.com';

  @override
  String get passwordLabel => 'Password';

  @override
  String get loginForgotPassword => 'Forgot your password?';

  @override
  String get loginButton => 'Log in';

  @override
  String get loginGoogleButton => 'Continue with Google';

  @override
  String get loginMissingFieldsError =>
      'You must fill in both email and password.';

  @override
  String get registerTitle => 'Create an account';

  @override
  String get registerSubtitle => 'Start tracking your building today';

  @override
  String get registerCardTitle => 'Sign up';

  @override
  String get registerCardSubtitle =>
      'Create your account to start managing buildings.';

  @override
  String get registerRoleHeader => 'SELECT YOUR ROLE';

  @override
  String get registerRoleAdmin => 'Property\nadmin';

  @override
  String get registerRoleOwner => 'Owner';

  @override
  String get registerRoleTenant => 'Tenant';

  @override
  String get firstNameLabel => 'First name';

  @override
  String get lastNameLabel => 'Last name';

  @override
  String get confirmPasswordLabel => 'Confirm password';

  @override
  String get registerAcceptTermsPrefix => 'I accept the ';

  @override
  String get registerTermsOfService => 'Terms of Service';

  @override
  String get registerAcceptTermsMiddle => ' and the ';

  @override
  String get registerPrivacyPolicy => 'Privacy Policy';

  @override
  String get registerCreateAccountButton => 'Create BuildRank account';

  @override
  String get registerGoogleButton => 'Create account with Google';

  @override
  String get registerMissingFieldsError => 'You must fill in all fields.';

  @override
  String get registerPasswordsMismatchError => 'Passwords do not match.';

  @override
  String get registerAcceptTermsError =>
      'You must accept the terms and conditions.';

  @override
  String get registerSuccessInline =>
      'Account created successfully. You can now log in.';

  @override
  String get registerSuccessSnackBar => 'Registration completed successfully.';

  @override
  String get passwordResetAppBarTitle => 'Reset password';

  @override
  String get passwordResetRequestTitle => 'Recover your password';

  @override
  String get passwordResetConfirmTitle => 'Create a new password';

  @override
  String get passwordResetRequestSubtitle =>
      'Enter the email linked to your account and paste the link received by email.';

  @override
  String get passwordResetConfirmSubtitle =>
      'Enter a new password for your account.';

  @override
  String get passwordResetSendInstructions => 'Send instructions';

  @override
  String get passwordResetHaveLinkTitle => 'Already have the link?';

  @override
  String get passwordResetHaveLinkBody =>
      'Paste the link received by email here. BuildRank will automatically extract the uid and token.';

  @override
  String get passwordResetLinkLabel => 'Recovery link';

  @override
  String get passwordResetLinkHint =>
      'https://.../reset-password?uid=...&token=...';

  @override
  String get passwordResetContinueWithLink => 'Continue with link';

  @override
  String get newPasswordLabel => 'New password';

  @override
  String get confirmNewPasswordLabel => 'Confirm new password';

  @override
  String get passwordResetSubmit => 'Reset password';

  @override
  String get passwordResetPasteAnotherLink => 'Paste another link';

  @override
  String get passwordResetEmailRequiredError => 'Enter your email address.';

  @override
  String get passwordResetRequestSuccess =>
      'If the email exists, you will receive a link to reset your password. Paste it here when you have it.';

  @override
  String get passwordResetLinkRequiredError =>
      'Paste the recovery link received by email.';

  @override
  String get passwordResetInvalidLinkError =>
      'Could not find the uid and token parameters inside the link.';

  @override
  String get passwordResetLinkValidatedSuccess =>
      'Link validated. Enter the new password.';

  @override
  String get passwordResetPasswordRequiredError =>
      'Enter and confirm the new password.';

  @override
  String get passwordResetSuccessSnackBar => 'Password reset successfully.';

  @override
  String get legalTermsTitle => 'Terms of Service';

  @override
  String get legalPrivacyTitle => 'Privacy Policy';

  @override
  String get legalTermsSubtitle => 'Basic terms for using BuildRank';

  @override
  String get legalPrivacySubtitle =>
      'How BuildRank handles data within the MVP';

  @override
  String get legalInfoNotice =>
      'BuildRank is an academic project in MVP stage. This text summarizes the terms and privacy criteria that apply to the demo and use of the prototype.';

  @override
  String get legalTermsSection1Title => '1. Purpose of the service';

  @override
  String get legalTermsSection1Body =>
      'BuildRank is an application designed to promote more responsible and sustainable energy use in residential buildings. It lets users consult building information, view indicators, compare results, simulate improvements, and participate in community features according to the user\'s role.';

  @override
  String get legalTermsSection2Title =>
      '2. Informational nature of the information';

  @override
  String get legalTermsSection2Body =>
      'Scores, rankings, estimated energy ratings, simulations, Heat Risk Index, and badges are informational and indicative. They do not constitute official energy certifications, professional technical reports, or conclusive engineering recommendations.';

  @override
  String get legalTermsSection3Title => '3. Responsible use of the application';

  @override
  String get legalTermsSection3Body =>
      'The user agrees to use BuildRank responsibly, not to enter false data or third-party data without authorization, and to respect community rules in votes, chats, and shared spaces.';

  @override
  String get legalTermsSection4Title => '4. Roles and permissions';

  @override
  String get legalTermsSection4Body =>
      'Available actions may vary depending on the user\'s role and relationship with a building. Some actions, such as managing buildings, validating requests, recalculating badges, or administering votes, may be limited to authorized administrators.';

  @override
  String get legalTermsSection5Title =>
      '5. Open data, manual data, and estimates';

  @override
  String get legalTermsSection5Body =>
      'BuildRank may combine open data, manually entered data, and estimated results. When data is incomplete, estimated, or pending verification, the application will try to indicate this clearly so the user can interpret it correctly.';

  @override
  String get legalTermsSection6Title => '6. Human review and official sources';

  @override
  String get legalTermsSection6Body =>
      'In case of discrepancy regarding energy data, documentation, ownership, or permissions, human review and official sources prevail over any automatic or estimated result shown by the system.';

  @override
  String get legalPrivacySection1Title => '1. Data processed';

  @override
  String get legalPrivacySection1Body =>
      'BuildRank may process account data, user role, associated buildings, linked homes, requests, votes, simulations, notifications, and validation or administration actions.';

  @override
  String get legalPrivacySection2Title => '2. Purpose of processing';

  @override
  String get legalPrivacySection2Body =>
      'Data is used to authenticate users, manage buildings, apply permissions, show indicators, enable community participation, record sensitive actions, and improve the quality of system data.';

  @override
  String get legalPrivacySection3Title => '3. Data minimization';

  @override
  String get legalPrivacySection3Body =>
      'BuildRank tries to show only the information needed for each feature. For example, general views such as the map should not expose emails, documents, homes, or unnecessary personal data.';

  @override
  String get legalPrivacySection4Title => '4. Documents and verifications';

  @override
  String get legalPrivacySection4Body =>
      'In verification processes, uploaded documents may contain sensitive information. These files should be used only to review the necessary evidence and not for purposes unrelated to the validation process.';

  @override
  String get legalPrivacySection5Title => '5. Traceability and audit';

  @override
  String get legalPrivacySection5Body =>
      'Sensitive actions may be recorded for security, audit, and system integrity purposes. This traceability helps explain relevant changes to permissions, validations, buildings, votes, or scores.';

  @override
  String get legalPrivacySection6Title =>
      '6. Use of AI and automatic decisions';

  @override
  String get legalPrivacySection6Body =>
      'Any automated or AI-based support, if present, should be understood as an aid for detecting inconsistencies or review points. It does not replace human review and should not approve documents, assign roles, or modify scores autonomously.';

  @override
  String get legalPrivacySection7Title => '7. User responsibility';

  @override
  String get legalPrivacySection7Body =>
      'The user should avoid uploading unnecessary information or third-party documents without authorization. Keys, tokens, and credentials must not be shared or entered outside the forms provided by the application.';

  @override
  String get commonRetry => 'Try again';

  @override
  String get commonCancel => 'Cancel';

  @override
  String get commonConfirm => 'Confirm';

  @override
  String get commonBack => 'Back';

  @override
  String get commonRefresh => 'Refresh';

  @override
  String commonErrorWithValue(String error) {
    return 'Error: $error';
  }

  @override
  String get adminUserManagementTitle => 'User management';

  @override
  String get notificationsTitle => 'Notifications';

  @override
  String get notificationsMarkAll => 'Mark all';

  @override
  String get notificationsLoadError => 'Could not load notifications.';

  @override
  String get notificationsEmpty => 'You have no notifications';

  @override
  String get notificationsNow => 'Just now';

  @override
  String notificationsMinutesAgo(int count) {
    return '$count min ago';
  }

  @override
  String notificationsHoursAgo(int count) {
    return '$count h ago';
  }

  @override
  String notificationsDaysAgo(int count) {
    return '$count days ago';
  }

  @override
  String get myChatsTitle => 'My chats';

  @override
  String get myChatsConnectionError => 'Could not connect to chat.';

  @override
  String get myChatsReconnect => 'Reconnect';

  @override
  String get myChatsNoMessages => 'No messages';

  @override
  String get myChatsEmpty => 'You have no active chats.';

  @override
  String get myChatsDirectDescription =>
      'Direct conversation or shared channel between administrators.';

  @override
  String get chatFallbackName => 'Chat';

  @override
  String get chatDirectDescription =>
      'Direct conversation between property administrators.';

  @override
  String get chatUserNotConnectedError =>
      'User not connected. Sign out and sign back in.';

  @override
  String chatConnectionError(String error) {
    return 'Error connecting chat:\n$error';
  }

  @override
  String get homeRankingTitle => 'Ranking';

  @override
  String get homeProfileTitle => 'Profile';

  @override
  String get homeGreeting => 'Good morning';

  @override
  String get homeSummaryTitle => 'Your building summary';

  @override
  String get homeSummarySubtitle =>
      'Check the current energy status, your league position, and the next recommended actions.';

  @override
  String get homeDemoBuildingName => 'Central Library';

  @override
  String get homeDemoBuildingSubtitle => 'Building monitored this week';

  @override
  String get homeMetricConsumption => 'Consumption';

  @override
  String get homeMetricPosition => 'Position';

  @override
  String get homeMetricImprovement => 'Improvement';

  @override
  String get homeKeyIndicatorsTitle => 'Key indicators';

  @override
  String get homeTodayConsumptionTitle => 'Estimated consumption today';

  @override
  String get homeTodayConsumptionSubtitle => '18 kWh · 6% less than yesterday';

  @override
  String get homeLeaguePositionTitle => 'League position';

  @override
  String get homeLeaguePositionSubtitle => '3rd position out of 12 buildings';

  @override
  String get homeRecommendationTitle => 'Main recommendation';

  @override
  String get homeRecommendationSubtitle =>
      'Reduce air conditioning in the afternoon';

  @override
  String get homeQuickActionsTitle => 'Quick actions';

  @override
  String get homeBuildingTitle => 'Building';

  @override
  String get homeImprovementsTitle => 'Improvements';

  @override
  String get homeCommunityTitle => 'Community';

  @override
  String get homeWeeklyGoalTitle => 'Weekly goal';

  @override
  String get homeWeeklyGoalBody =>
      'Keep consumption below 130 kWh to consolidate your place in the top 3.';

  @override
  String get twinTitle => 'Twin Building';

  @override
  String get twinIntroTitle => 'Administrators of comparable buildings';

  @override
  String twinIntroBody(String buildingName) {
    return 'Contact property administrators of buildings similar to $buildingName to share experiences about energy improvements, votes, and community management.';
  }

  @override
  String get twinEmptyTitle => 'No comparable administrators are available.';

  @override
  String get twinEmptyBody =>
      'The building may not have a comparable group yet, or there may be no other administered buildings in the same group.';

  @override
  String twinChannelName(String address) {
    return 'Twin Building with $address';
  }

  @override
  String twinChannelDescription(String adminName, String address) {
    return 'Conversation with $adminName, administrator of $address.';
  }

  @override
  String twinPoints(String points) {
    return '$points pts';
  }

  @override
  String get twinTypologyFallback => 'Typology';

  @override
  String twinClimateZone(String zone) {
    return 'Zone $zone';
  }

  @override
  String twinAdminLine(String adminName) {
    return 'Admin: $adminName';
  }

  @override
  String get twinOpenChat => 'Open chat';

  @override
  String get editProfileTitle => 'Edit profile';

  @override
  String get editProfilePersonalDataTitle => 'Personal details';

  @override
  String get editProfilePersonalDataSubtitle =>
      'Update your account\'s basic information. The role cannot be changed from this screen.';

  @override
  String get editProfileRoleLabel => 'Role';

  @override
  String get editProfileSaving => 'Saving...';

  @override
  String get editProfileSaveChanges => 'Save changes';

  @override
  String get editProfileFirstNameRequired => 'First name is required.';

  @override
  String get editProfileLastNameRequired => 'Last name is required.';

  @override
  String get editProfileEmailRequired => 'Email is required.';

  @override
  String get editProfileEmailInvalid => 'Enter a valid email address.';

  @override
  String get editProfileSuccess => 'Profile updated successfully.';

  @override
  String get votesCreateTitle => 'New vote';

  @override
  String get votesCreateAction => 'Create';

  @override
  String get votesTitleLabel => 'Title';

  @override
  String get votesTitleHint => 'Enter the vote title';

  @override
  String get votesTitleRequiredError => 'The title is required.';

  @override
  String get votesTitleMinLengthError =>
      'The title must be at least 4 characters long.';

  @override
  String get votesDescriptionOptionalLabel => 'Description (optional)';

  @override
  String get votesDescriptionHint => 'Explain the context of the vote...';

  @override
  String get votesDeadlineOptionalLabel => 'Deadline (optional)';

  @override
  String get votesNoDeadline => 'No deadline';

  @override
  String get votesOptionsLabel => 'Options';

  @override
  String get votesOptionsLimitHint => 'Minimum 2 · Maximum 8';

  @override
  String get votesAddOption => 'Add option';

  @override
  String votesOptionHint(int number) {
    return 'Option $number';
  }

  @override
  String get votesOptionRequiredError => 'This option cannot be empty.';

  @override
  String get votesDuplicateOptionsError =>
      'There are duplicate options. Review them.';

  @override
  String get pendingRequestsTitle => 'Pending requests';

  @override
  String pendingRequestsIntro(String buildingTitle) {
    return 'Here you can review and validate resident join requests for $buildingTitle.';
  }

  @override
  String pendingRequestsCount(int count) {
    return '$count pending';
  }

  @override
  String get pendingRequestsEmptyTitle => 'No pending requests';

  @override
  String get pendingRequestsEmptyBody =>
      'When other users ask to join this building, they will appear here.';

  @override
  String get pendingRequestsUnexpectedError => 'An unexpected error occurred.';

  @override
  String get pendingRequestsForbidden =>
      'Only the property administrator can manage pending requests.';

  @override
  String pendingRequestsAccepted(String name) {
    return 'The request from $name has been accepted.';
  }

  @override
  String pendingRequestsRejected(String name) {
    return 'The request from $name has been rejected.';
  }

  @override
  String get pendingRequestsResidentChip => 'Resident';

  @override
  String get pendingRequestsRequestTypeLabel => 'Request type';

  @override
  String get pendingRequestsResidentJoinType => 'Resident join request';

  @override
  String get pendingRequestsDateLabel => 'Date';

  @override
  String get pendingRequestsCadastralReferenceLabel => 'Cadastral reference';

  @override
  String get pendingRequestsHomeLabel => 'Home';

  @override
  String get pendingRequestsSurfaceLabel => 'Surface';

  @override
  String get pendingRequestsReject => 'Reject';

  @override
  String get pendingRequestsAccept => 'Accept';

  @override
  String get pendingRequestsNotSpecified => 'Not specified';

  @override
  String pendingRequestsFloorDoor(String floor, String door) {
    return 'Floor $floor · Door $door';
  }

  @override
  String pendingRequestsFloor(String floor) {
    return 'Floor $floor';
  }

  @override
  String pendingRequestsDoor(String door) {
    return 'Door $door';
  }

  @override
  String get chatReasonOptionalHint => 'Reason (optional)';

  @override
  String get chatConfirmActionTitle => 'Confirm action';

  @override
  String get chatDurationLabel => 'Duration';

  @override
  String get chatDurationIndefinite => 'Indefinite';

  @override
  String get chatDuration30Minutes => '30 minutes';

  @override
  String get chatDuration1Hour => '1 hour';

  @override
  String get chatDuration6Hours => '6 hours';

  @override
  String get chatDuration24Hours => '24 hours';

  @override
  String get chatReportMessage => 'Report message';

  @override
  String get chatHideMessage => 'Hide message';

  @override
  String get chatDeleteMyMessage => 'Delete my message';

  @override
  String get chatDeleteMessage => 'Delete message';

  @override
  String get chatRestoreMessage => 'Restore message';

  @override
  String get chatDismissReport => 'Dismiss report';

  @override
  String get chatDeleteOwnMessageConfirm =>
      'Are you sure you want to delete your message?';

  @override
  String get chatDeleteOtherMessageConfirm => 'Delete this user\'s message?';

  @override
  String get chatMessageReported => 'Message reported.';

  @override
  String get chatMessageHidden => 'Message hidden.';

  @override
  String get chatMessageDeleted => 'Message deleted.';

  @override
  String get chatMessageRestored => 'Message restored.';

  @override
  String get chatReportDismissed => 'Report dismissed.';

  @override
  String get chatWarnUser => 'Warn user';

  @override
  String get chatMuteUser => 'Mute user';

  @override
  String get chatBanFromChannel => 'Ban from channel';

  @override
  String get chatGlobalBan => 'Global ban';

  @override
  String get chatShadowBan => 'Shadow ban';

  @override
  String get chatWarn => 'Warn';

  @override
  String get chatMute => 'Mute';

  @override
  String get chatUnmute => 'Unmute';

  @override
  String get chatReadmitToChannel => 'Readmit to channel';

  @override
  String get chatLiftGlobalBan => 'Lift global ban';

  @override
  String get chatLiftShadowBan => 'Lift shadow ban';

  @override
  String get chatWarningSent => 'Warning sent.';

  @override
  String get chatUserMuted => 'User muted.';

  @override
  String get chatUserUnmuted => 'User unmuted.';

  @override
  String get chatUserBannedFromChannel => 'User banned from channel.';

  @override
  String get chatUserUnbannedFromChannel => 'User readmitted to channel.';

  @override
  String get chatUserGloballyBanned => 'User globally banned.';

  @override
  String get chatGlobalUnbanConfirm => 'Lift this user\'s global ban?';

  @override
  String get chatGlobalBanLifted => 'Global ban lifted.';

  @override
  String get chatShadowBanApplied => 'Shadow ban applied.';

  @override
  String get chatShadowUnbanConfirm => 'Lift this user\'s shadow ban?';

  @override
  String get chatShadowBanLifted => 'Shadow ban lifted.';

  @override
  String chatCommunityTitle(String buildingName) {
    return '$buildingName community';
  }

  @override
  String get chatCommunitySubtitle =>
      'Talk with this building\'s members about improvements, incidents, and proposals.';

  @override
  String get chatContactSimilarAdmins => 'Contact similar admins';

  @override
  String get mapTitle => 'Building map';

  @override
  String get mapSearchHint => 'Search by street, neighborhood, or postal code';

  @override
  String get mapSearchTooltip => 'Search';

  @override
  String get mapFilterAll => 'All';

  @override
  String mapFilterMinScore(int score) {
    return '≥ $score';
  }

  @override
  String get mapNoValidCoordinates =>
      'There are no buildings with valid coordinates to show.';

  @override
  String mapShownOfCount(int shown, int count) {
    return '$shown of $count buildings shown';
  }

  @override
  String mapShownCount(int shown) {
    return '$shown buildings on the map';
  }

  @override
  String get mapLoadError => 'Could not load the map.';

  @override
  String get profileUserFallback => 'User';

  @override
  String get profileRoleAdmin => 'Property administrator';

  @override
  String get profileRoleOwner => 'Owner';

  @override
  String get profileRoleTenant => 'Tenant';

  @override
  String get profileAdminBuildingsTitle => 'Managed buildings';

  @override
  String get profileOwnerBuildingsTitle => 'Buildings for my homes';

  @override
  String get profileTenantBuildingsTitle => 'Linked buildings';

  @override
  String get profileAccessibleBuildingsTitle => 'Accessible buildings';

  @override
  String get profileEmptyAdminBuildings =>
      'You do not have any buildings assigned as a property administrator yet. You can create one with the registration form.';

  @override
  String get profileEmptyOwnerBuildings =>
      'You do not have any homes linked to your account yet. When an administrator assigns you a home, you will see the corresponding building here.';

  @override
  String get profileEmptyTenantBuildings =>
      'You do not have any home linked to your account yet. When you are assigned to a home, you will see the corresponding building here.';

  @override
  String get profileEmptyAccessibleBuildings =>
      'There are no buildings available for this account yet.';

  @override
  String get profileBuildingCreated => 'Building created successfully.';

  @override
  String get profileLogoutTooltip => 'Sign out';

  @override
  String get profileReportsSoon =>
      'Board meeting reports are not available yet in this MVP.';

  @override
  String get profileCreateBuilding => 'Create building';

  @override
  String get profileReports => 'Reports';

  @override
  String get profileNonAdminInfo =>
      'This account can view buildings linked to its homes. Building creation and administration are reserved for property administrators.';

  @override
  String get profileMapSubtitle =>
      'View registered buildings and check their main statistics.';

  @override
  String get profileLinkNewBuilding => 'Link new building';

  @override
  String get profileLoadError => 'Could not load the profile.';

  @override
  String get profileMetricBuildings => 'BUILDINGS';

  @override
  String get profileMetricLinks => 'LINKS';

  @override
  String get profileMetricAvgRanking => 'AVG RANKING';

  @override
  String get profileMetricProgress => 'PROGRESS';

  @override
  String get profileSeasonRestart => 'Next season restart';

  @override
  String profileSeasonDaysLeft(int days) {
    return '$days days left';
  }

  @override
  String get profileBadgesTitle => 'Building badges';

  @override
  String get profileBadgesBody =>
      'Real badges are shown inside each building profile. When a building meets score, data quality, or improvement criteria, they will appear in its details.';

  @override
  String profileBuildingNumber(int id) {
    return 'Building #$id';
  }

  @override
  String get profileLocationUnavailable => 'Location unavailable';

  @override
  String get profileInactive => 'Inactive';

  @override
  String get profileActive => 'Active';

  @override
  String get accountBlockedTitle => 'Account blocked';

  @override
  String get accountBlockedBody =>
      'Your account has been permanently blocked. Contact the administrator for more information.';

  @override
  String get accountSuspendedTitle => 'Account suspended';

  @override
  String get accountSuspendedBody =>
      'Your account is temporarily suspended. Contact the administrator for more information.';

  @override
  String get accountBackToLogin => 'Back to login';

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
  String get mainNavHome => 'Home';

  @override
  String get mainNavLeagues => 'Leagues';

  @override
  String get mainNavSimulate => 'Simulate';

  @override
  String get mainNavChat => 'Chat';

  @override
  String get mainNavVotes => 'Votes';

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
