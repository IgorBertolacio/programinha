import 'package:flutter/material.dart';
import '../../domain/entities/bloco.dart';
import '../../core/widgets/color_block_widget.dart';

/// Widget que constrói uma coluna de blocos a partir de uma lista de blocos.
class BlocosColumnWidget extends StatelessWidget {
  final List<Bloco> blocos;
  final Bloco? blocoAtivo;
  final void Function(Bloco) onBlocoTap;

  const BlocosColumnWidget({
    Key? key,
    required this.blocos,
    required this.blocoAtivo,
    required this.onBlocoTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: blocos.map((bloco) {
        return ColorBlockWidget(
          bloco: bloco,
          blocoAtivo: blocoAtivo,
          onTap: () {
            onBlocoTap(bloco);
          },
          onBlocoTap: onBlocoTap, // Passa a função de callback recursivamente
        );
      }).toList(),
    );
  }
}
