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
          case ResponseStatus.error:
            return netWorkError();
          case ResponseStatus.loading:
            return const Center(
              child: CircularProgressIndicator(),
            );
          case ResponseStatus.complete:
            return Scaffold(
                body: CustomScrollView(
              shrinkWrap: true,
              slivers: [
                sliverAppBar(state.profile.data!.hospital!.image!.secureUrl!,
                    context, state.profile.data!.hospital!),
                SliverPadding(
                  padding: const EdgeInsets.all(10),
                  sliver: SliverList(
                    delegate: SliverChildListDelegate(
                      [
                        space1h(),
                        cText1(state.profile.data!.hospital!.name!),
                        space1h(),
                        labelText('Email'),
                        cText1(
                          state.profile.data!.hospital!.email!,
                        ),
                        space1h(),
                        labelText('Place'),
                        cText1(
                          state.profile.data!.hospital!.place!,
                        ),
                        space1h(),
                        labelText('About'),
                        cText1(
                          state.profile.data!.hospital!.about!,
                        ),
                        space1h(),
                        const Text(
                          'Rating And Review',
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              state.profile.data!.rating!.toString(),
                              style: const TextStyle(fontSize: 40),
                            ),
                            space1w(),
                            starRating(state.profile.data!.rating!)
                          ],
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
                )
              ],
            ));
          default:
            return const SizedBox();
        }
      },
    );
  }
}
