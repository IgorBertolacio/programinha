import 'package:flutter/material.dart';

/// Entidade que representa um Bloco, que pode conter blocos filhos.
class Bloco {
  final Color cor;
  final List<Bloco> filhos;

  Bloco(this.cor) : filhos = [];
}
