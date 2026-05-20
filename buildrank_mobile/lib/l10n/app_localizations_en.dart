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
}
