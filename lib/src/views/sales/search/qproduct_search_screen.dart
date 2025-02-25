import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:multifast/core/setup_locator.dart';
import 'package:multifast/src/models/internal/recent_model.dart';
import 'package:multifast/src/models/qproduct_model.dart';
import 'package:multifast/src/repositories/internal/recent_repository.dart';
import 'package:multifast/src/repositories/product_repository.dart';
import 'package:multifast/src/views/sales/qproduct_detail/bloc/qproduct_detail_bloc.dart';
import 'package:multifast/src/views/sales/search/bloc/qproduct_bloc.dart';
import 'package:multifast/src/views/sales/search/widgets/qproduct_container.dart';
import 'package:multifast/src/views/widgets/back_widget.dart';
import 'package:multifast/src/views/widgets/buttons_controls.dart';
import 'package:multifast/src/views/widgets/loading_widgets.dart';
import 'package:multifast/styles/app_colors.dart';
import 'package:multifast/styles/app_images.dart';
import 'package:multifast/styles/app_text_style.dart';
import 'package:multifast/utils/actions.dart';

class QProductSearchScreen extends StatelessWidget {
  final bool isQuotation;
  const QProductSearchScreen({super.key, required this.isQuotation});

  @override
  Widget build(BuildContext context) {
    return BlocListener<QProductDetailBloc, QProductDetailState>(
      listener: (context, state) {
        if (state is QProductDetailLoad) {
          if (state.isScan) {
            context.push('/sales/qproduct/detail/${state.isScan.toString()}/${state.isQuotation.toString()}', extra: state.detail);
          } else {
            context.push('/sales/qproduct/detail/${state.isScan.toString()}/${state.isQuotation.toString()}', extra: state.detail);
          }
        }
      },
      child: BlocBuilder<QProductsBloc, QProductsState>(
        builder: (context, state) {
          return PopScope(
            canPop: false,
            onPopInvokedWithResult: (didPop, result) {
              if (!didPop) {
                final bloc = context.read<QProductsBloc>();
                if (bloc.state is QProductsSearch || bloc.state is QProductsFound) {
                  backLogic(context);
                } else {
                  context.pop();
                }
              }
            },
            child: BlocSelector<QProductDetailBloc, QProductDetailState, bool>(
              selector: (stateDetail) {
                return stateDetail is QProductDetailLoading;
              },
              builder: (context, isLoading) {
                return Stack(
                  children: [
                    Scaffold(
                      appBar: AppBar(
                        automaticallyImplyLeading: false,
                        backgroundColor: Colors.white,
                        scrolledUnderElevation: 0,
                        bottom:
                            PreferredSize(preferredSize: Size.fromHeight(1), child: Divider(color: AppColors.border)),
                        title: _searchProduct(context, state),
                      ),
                      backgroundColor: Colors.white,
                      body: _buildBody(context, state),
                    ),
                    if (isLoading)
                      Positioned.fill(
                        child: buildCircularLoadingFast(context),
                      ),
                  ],
                );
              },
            ),
          );
        },
      ),
    );
  }

  bool canBack(QProductsState state) {
    return state is! QProductsSearch && state is! QProductsFound;
  }

  void backLogic(BuildContext context) {
    context.read<QProductsBloc>().searchController.text = '';
    context.read<QProductsBloc>().add(ReturnQProducts());
  }

  Widget _buildBody(BuildContext context, QProductsState state) {
    final qproductBloc = context.read<QProductsBloc>();
    if (state is QProductsLoading) {
      return Center(
          child: CircularProgressIndicator(
        color: Colors.amber,
      ));
    } else if (state is QProductsSearch) {
      return ListView.builder(
        itemCount: state.searchList.length,
        itemBuilder: (context, index) {
          final qproductName = state.searchList[index].entity.name;
          final lowerWord = qproductName.toLowerCase();
          final lowerKey = state.searchWord.toLowerCase();
          final startIndex = lowerWord.indexOf(lowerKey);
          final endIndex = startIndex + lowerKey.length;

          final beforeKey = qproductName.substring(0, startIndex);
          final matchKey = qproductName.substring(startIndex, endIndex);
          final afterKey = qproductName.substring(endIndex);
          return Padding(
            padding: EdgeInsets.only(left: 10.w, right: 10.w),
            child: GestureDetector(
              onTap: () {
                context.read<QProductsBloc>().searchController.text = qproductName;
                qproductBloc.add(FoundQProducts(context.read<QProductsBloc>().searchController.text));
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: AppColors.border, width: 1.5)),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 13.w, height: 13.w, child: Image.asset(AppIcons.search)),
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(text: beforeKey, style: AppTextStyle.cls2Style(fontSize: 13)),
                            TextSpan(text: matchKey, style: AppTextStyle.cls10Style()),
                            TextSpan(text: afterKey, style: AppTextStyle.cls2Style(fontSize: 13)),
                          ],
                        ),
                      ),
                    ),
                    const Spacer(),
                    SizedBox(width: 10.w, height: 10.w, child: Image.asset(AppIcons.go))
                  ],
                ),
              ),
            ),
          );
        },
      );
    } else if (state is QProductsFound) {
      return Column(
        children: [
          _listQProducts(state),
        ],
      );
    } else if (state is QProductsLoad) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          StreamBuilder<List<RecentModel>>(
            stream: getIt<RecentRepository>().stream,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                getIt<RecentRepository>().updateStream();
                return Center(child: CircularProgressIndicator());
              }
              if (snapshot.hasError) {
                return Center(child: Text('Error: ${snapshot.error}'));
              }

              if (!snapshot.hasData || snapshot.data!.isEmpty) {
                return SizedBox.shrink();
              }

              final recents = snapshot.data ?? [];
              return Padding(
                padding: EdgeInsets.only(left: 10.w, right: 10.w, bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Búsquedas recientes', style: AppTextStyle.cls2Style()),
                        GestureDetector(
                          onTap: () {
                            getIt<RecentRepository>().cleanList();
                          },
                          child: Text(
                            'Limpiar Historial',
                            style: AppTextStyle.cls5Style(fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Wrap(
                      runSpacing: 5,
                      spacing: 8,
                      children: List.generate(recents.length, (index) {
                        return GestureDetector(
                          onTap: () {
                            context.read<QProductsBloc>().searchController.text = recents[index].name;
                            getIt<ProductRepository>().searchByAllFilters(recents[index].name);
                            //context.read<QProductsBloc>().add(FoundQProducts(recents[index].name));
                          },
                          child: _buildRecentSearch(context, recents[index], index),
                        );
                      }),
                    ),
                  ],
                ),
              );
            },
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 0),
            child: Text('Productos favoritos', style: AppTextStyle.defaultStyle(fontW: FontWeight.w600, fontSize: 14)),
          ),
          _listQProducts(state),
          if (isQuotation)
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.w),
              child: buildAppButtonWithOutExpanded(context, 'ítems'),
            ),
        ],
      );
    } else {
      return Text('Error');
    }
  }

  Widget _buildRecentSearch(BuildContext context, RecentModel recent, int index) {
    return Container(
      height: 35.h,
      padding: EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(border: Border.all(color: AppColors.border), borderRadius: BorderRadius.circular(7.r)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(width: 13.r, height: 13.r, child: Image.asset(AppIcons.clock, color: AppColors.cls9)),
          Padding(
            padding: const EdgeInsets.only(left: 4, right: 10),
            child: Text(recent.name),
          ),
          GestureDetector(
            onTap: () {
              final recentRepository = getIt<RecentRepository>();
              recentRepository.deleteRecentSearch(index);
              //repository.deleteRecentSearch(recent.index);
            },
            child: SizedBox(width: 8.r, height: 8.r, child: Image.asset(AppIcons.cancel)),
          ),
        ],
      ),
    );
  }

  Widget _listQProducts(QProductsState state) {
    final qproductsStream = getIt<ProductRepository>().stream;
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 10.w, right: 10.w),
        child: StreamBuilder<List<QProductModel>>(
          stream: qproductsStream,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              getIt<ProductRepository>().updateTempStrem();
              return Center(
                  child: Column(
                children: [CircularProgressIndicator(), Text('culpa del stream')],
              ));
            }
            if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            }

            if (!snapshot.hasData || snapshot.data!.isEmpty) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('0 resultados encontrados', style: AppTextStyle.cls2Style()),
                  SizedBox(height: 70.h),
                  Expanded(
                    child: Center(
                      child: Column(
                        children: [
                          SizedBox(width: 228.w, height: 194.h, child: Image.asset(AppImages.empty)),
                          SizedBox(height: 15),
                          Text('Ups! Lo sentimos, no hay productos', style: AppTextStyle.cls10Style()),
                          Text('que coincidan con tu búsqueda.', style: AppTextStyle.cls10Style())
                        ],
                      ),
                    ),
                  )
                ],
              );
            }

            final qproducts = snapshot.data ?? [];
            return ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: qproducts.length,
              itemBuilder: (context, index) {
                return QProductContainer(qproduct: qproducts[index], isQuotation: isQuotation);
              },
            );
          },
        ),
      ),
    );
  }

  Widget _searchProduct(BuildContext context, QProductsState state) {
    return Row(
      children: [
        BackWidget(
          onTap: canBack(state)
              ? null
              : () {
                  backLogic(context);
                },
        ),
        SizedBox(
          width: 180.w,
          height: 20.h,
          child: ValueListenableBuilder<TextEditingValue>(
            valueListenable: context.read<QProductsBloc>().searchController,
            builder: (context, value, child) {
              return TextFormField(
                controller: context.read<QProductsBloc>().searchController,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.zero,
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                    hintText: '¿Qué estas buscando?',
                    hintStyle: AppTextStyle.lightStyle(fontSize: 14, fontW: FontWeight.w500),
                    suffixIcon: value.text.isEmpty
                        ? null
                        : GestureDetector(
                            onTap: () {
                              context.read<QProductsBloc>().searchController.text = '';
                              getIt<ProductRepository>().updateTempStrem();
                              getIt<RecentRepository>().isSearching(false);
                            },
                            child: Image.asset(AppIcons.cancel, scale: 2))),
                onChanged: (value) {
                  getIt<ProductRepository>().searchByAllFilters(value);
                  if (value.length < 2) {
                    getIt<RecentRepository>().isSearching(value.isNotEmpty);
                  }
                },
                onFieldSubmitted: (value) {
                  getIt<RecentRepository>().saveRecentSearch(value);
                },
              );
            },
          ),
        ),
        Spacer(),
        GestureDetector(
          onTap: () {
            context.push('/sales/search/scan/false');
          },
          child: SizedBox(
            width: 16.r,
            height: 16.r,
            child: Image.asset(AppIcons.scanner),
          ),
        ),
        SizedBox(width: 10.w),
        GestureDetector(
          onTap: () {
            context.push('/sales/filter');
          },
          child: SizedBox(
            width: 16.r,
            height: 16.r,
            child: Image.asset(AppIcons.filter),
          ),
        ),
        SizedBox(width: 10.w),
        GestureDetector(
          onTap: () {
            actionLoadProducts(context);
          },
          child: SizedBox(
            width: 16.r,
            height: 16.r,
            child: Image.asset(AppIcons.restart),
          ),
        ),
        SizedBox(width: 10.w),
      ],
    );
  }
}
