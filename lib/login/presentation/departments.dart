import 'package:doconline_hospital/core/constants/colors.dart';
import 'package:doconline_hospital/core/response_handler/status.dart';
import 'package:doconline_hospital/login/bloc/departmet/department_bloc.dart';
import 'package:doconline_hospital/login/presentation/widgets/adddepartmetn_diologe.dart';
import 'package:doconline_hospital/login/presentation/widgets/common.dart';
import 'package:doconline_hospital/login/presentation/widgets/cards.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Departments extends StatelessWidget {
  const Departments({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<DepartmentBloc>(context)
        .add(const DepartmentEvent.getDepartments());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 101, 131, 146),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Departments',
              style: TextStyle(
                  fontSize: ScreenUtil().setSp(20), color: Colors.white),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey.withOpacity(.5),
                  side: BorderSide.none,
                  shape: const StadiumBorder()),
              child: Text('Add Department',
                  style: TextStyle(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      fontSize: ScreenUtil().setSp(18))),
              onPressed: () {
                addDepartmentshowdiologue(context);
              },
            )
          ],
        ),
      ),
      body: SafeArea(child: BlocBuilder<DepartmentBloc, DepartmentState>(
        builder: (context, state) {
          switch (state.departments.status) {
            case ResponseStatus.error:
              return netWorkError();
            case ResponseStatus.loading:
              return const Center(
                child: CircularProgressIndicator(),
              );
            case ResponseStatus.complete:
              return SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GridView.builder(
                          shrinkWrap: true,
                          physics: const ScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  mainAxisSpacing: 10,
                                  crossAxisSpacing: 10,
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
