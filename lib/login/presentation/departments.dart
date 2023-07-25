import 'package:doconline_hospital/core/response_handler/status.dart';
import 'package:doconline_hospital/login/bloc/departmet/department_bloc.dart';
import 'package:doconline_hospital/login/presentation/widgets/adddepartmetn_diologe.dart';
import 'package:doconline_hospital/login/presentation/widgets/common.dart';
import 'package:doconline_hospital/login/presentation/widgets/cards.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Departments extends StatelessWidget {
  const Departments({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<DepartmentBloc>(context)
        .add(const DepartmentEvent.getDepartments());
    return Scaffold(
      body: SafeArea(child: BlocBuilder<DepartmentBloc, DepartmentState>(
        builder: (context, state) {
          switch (state.departments.status) {
            case Status.error:
              return const SizedBox();
            case Status.loading:
              return const Center(
                child: CircularProgressIndicator(),
              );
            case Status.complete:
              return SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          header1('Department'),
                          ElevatedButton(
                              onPressed: () {
                                addDepartmentshowdiologue(context);
                              },
                              child: const Text('Add Doctors'))
                        ],
                      ),
                      GridView.builder(
                          shrinkWrap: true,
                          physics: const ScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  mainAxisSpacing: 15,
                                  crossAxisSpacing: 15,
                                  crossAxisCount: 2,
                                  childAspectRatio: (20 / 25)),
                          itemCount:
                              state.departments.data!.departments!.length,
                          itemBuilder: (context, index) => departmentCard(
                              state.departments.data!.departments![index].name!,
                              state.departments.data!.departments![index].id!,
                              context)),
                    ],
                  ),
                ),
              );
            default:
              return const SizedBox();
          }
        },
      )),
    );
  }
}
