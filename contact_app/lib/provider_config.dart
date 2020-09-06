import 'package:contacts_service/contacts_service.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';


List<SingleChildWidget> providers = [
  ...independentServices
];

List<SingleChildWidget> independentServices = [
  Provider.value(value: Contact())
];
