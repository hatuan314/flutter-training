import 'package:contact_app/common/base_vm/base_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BaseWidget<ViewModel extends BaseVM> extends StatefulWidget {
  final Widget Function(BuildContext context, ViewModel value, Widget child)
  builder;
  final Widget child;
  final Function(ViewModel) onModelReady;
  final Function onDispose;
  final ViewModel createViewModel;

  BaseWidget({
    Key key,
    @required this.createViewModel,
    @required this.builder,
    this.child,
    this.onModelReady,
    this.onDispose,
  }) : super(key: key);

  @override
  _BaseWidgetState<ViewModel> createState() => _BaseWidgetState<ViewModel>();
}

class _BaseWidgetState<ViewModel extends BaseVM>
    extends State<BaseWidget<ViewModel>> {
  @override
  void initState() {
    if (widget.onModelReady != null) {
      widget.onModelReady(widget.createViewModel);
    }
    super.initState();
  }

  @override
  void dispose() {
    widget.onDispose;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ViewModel>.value(
      value: widget.createViewModel,
      child: Consumer<ViewModel>(
        builder: widget.builder,
        child: widget.child,
      ),
    );
  }
}