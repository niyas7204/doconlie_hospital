import 'package:doconline_hospital/core/response_handler/status.dart';
import 'package:doconline_hospital/login/bloc/hospitalprofile/hospital_profile_bloc.dart';
import 'package:doconline_hospital/login/presentation/widgets/cards.dart';
import 'package:doconline_hospital/login/presentation/widgets/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HospitalDetails extends StatelessWidget {
  const HospitalDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final userBloc = BlocProvider.of<HospitalProfileBloc>(context);
      userBloc.add(const HospitalProfileEvent.getHospitalProfile());
    });
    return BlocBuilder<HospitalProfileBloc, HospitalProfileState>(
      builder: (context, state) {
        switch (state.profile.status) {
          case Status.error:
            return const SizedBox();
          case Status.loading:
            return const CircularProgressIndicator();
          case Status.complete:
            return Scaffold(
                body: CustomScrollView(
              shrinkWrap: true,
              slivers: [
                sliverAppBar(state.profile.data!.hospital!.image!.secureUrl!,
                    context, state.profile.data!.hospital!),
                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      space1h(),
                      cText1(state.profile.data!.hospital!.name!),
                      cText1(
                        state.profile.data!.hospital!.address!,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 170,
                        child: Row(
                          children: [
                            Expanded(
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount:
                                    state.profile.data!.departments!.length,
                                itemBuilder: (context, index) => departmentCard(
                                    state.profile.data!.departments![index]
                                        .name!,
                                    state.profile.data!.departments![index].id!,
                                    context),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Text(
                        'Rating and Review',
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Column(
                        children: [
                          state.profile.data!.reviews!.isNotEmpty
                              ? ListView.separated(
                                  physics: const ScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount:
                                      state.profile.data!.reviews!.length,
                                  separatorBuilder: (context, index) =>
                                      space1h(),
                                  itemBuilder: (context, index) => review(
                                      state.profile.data!.reviews![index]
                                          .userId!.name!,
                                      state.profile.data!.reviews![index]
                                          .rating!,
                                      state.profile.data!.reviews![index]
                                          .review!))
                              : header1('no review')
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ));
          default:
            return const SizedBox();
        }
      },
    );
  }
}
