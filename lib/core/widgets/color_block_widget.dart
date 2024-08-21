import 'package:flutter/material.dart';
import '../../domain/entities/bloco.dart';

/// Widget responsável por renderizar um Bloco com suas cores e filhos.
class ColorBlockWidget extends StatelessWidget {
  final Bloco bloco;
  final VoidCallback onTap;
  final Bloco? blocoAtivo;
  final void Function(Bloco) onBlocoTap;

  const ColorBlockWidget({
    Key? key,
    required this.bloco,
    required this.onTap,
    required this.blocoAtivo,
    required this.onBlocoTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: bloco.cor,
          border: Border.all(
            color: blocoAtivo == bloco ? Colors.black : Colors.transparent,
            width: 3,
          ),
        ),
        margin: const EdgeInsets.all(4),
        padding: const EdgeInsets.all(4),
        child: Column(
          children: [
            Container(
              height: 50,
              color: bloco.cor,
            ),
            if (bloco.filhos.isNotEmpty)
              Column(
                children: bloco.filhos.map((filho) {
                  return ColorBlockWidget(
                    bloco: filho,
                    onTap: () {
                      onBlocoTap(filho); // Seleciona o bloco filho
                    },
                    blocoAtivo: blocoAtivo,
                    onBlocoTap: onBlocoTap, // Passa a função de callback recursivamente
                  );
                }).toList(),
              ),
          ],
        ),
      ),
    );
  }
}
