import 'package:buildrank_mobile/features/profile/presentation/screens/edit_profile_screen.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../helpers/pump_localized.dart';

void main() {
  testWidgets('EditProfileScreen renderitza dades inicials', (tester) async {
    await pumpLocalizedWidget(
      tester,
      const EditProfileScreen(
        initialFullName: 'Laia Pons',
        initialEmail: 'laia@example.com',
        initialRoleLabel: 'Propietari',
      ),
    );

    expect(find.text('Editar perfil'), findsOneWidget);
    expect(find.text('Dades personals'), findsOneWidget);
    expect(find.text('Laia'), findsOneWidget);
    expect(find.text('Pons'), findsOneWidget);
    expect(find.text('laia@example.com'), findsOneWidget);
    expect(find.text('Propietari'), findsOneWidget);
  });
}
