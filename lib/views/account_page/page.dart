import 'package:fish_redux/fish_redux.dart';
import 'package:movie/customwidgets/custom_stfstate.dart';
import 'package:movie/views/account_page/components/theme1_component/state.dart';

import 'components/theme1_component/component.dart';
import 'components/theme2_component/component.dart';
import 'components/theme2_component/state.dart';
import 'components/theme3_component/component.dart';
import 'components/theme3_component/state.dart';
import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class AccountPage extends Page<AccountPageState, Map<String, dynamic>> {
  @override
  CustomstfState<AccountPageState> createState() =>
      CustomstfState<AccountPageState>();

  AccountPage()
      : super(
          initState: initState,
          effect: buildEffect(),
          reducer: buildReducer(),
          view: buildView,
          dependencies: Dependencies<AccountPageState>(
              adapter: null,
              slots: <String, Dependent<AccountPageState>>{
                'theme1': Theme1Connector() + Theme1Component(),
                'theme2': Theme2Connector() + Theme2Component(),
                'theme3': Theme3Connector() + Theme3Component(),
              }),
          middleware: <Middleware<AccountPageState>>[],
        );
}
