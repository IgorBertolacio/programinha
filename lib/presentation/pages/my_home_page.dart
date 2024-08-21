import 'package:flutter/material.dart';
import '../../domain/entities/bloco.dart';
import '../widigets/blocos_column_widget.dart';
import '../widigets/sidebar_widget.dart';

/// StatefulWidget que representa a página inicial.
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Bloco> blocosSelecionados = [];
  Bloco? blocoAtivo;

  /// Adiciona um novo bloco. Se há um bloco ativo, o novo bloco é adicionado como filho.
  void _adicionarBloco(Color cor) {
    setState(() {
      Bloco novoBloco = Bloco(cor);
      if (blocoAtivo != null) {
        blocoAtivo!.filhos.add(novoBloco);
      } else {
        blocosSelecionados.add(novoBloco);
      }
    });
  }

  /// Limpa todos os blocos e reseta o bloco ativo.
  void _limparBlocos() {
    setState(() {
      blocosSelecionados.clear();
      blocoAtivo = null;
    });
  }

  /// Remove o último bloco. Se há um bloco ativo, o último filho desse bloco é removido.
  void _removerUltimoBloco() {
    setState(() {
      if (blocoAtivo != null) {
        if (blocoAtivo!.filhos.isNotEmpty) {
          blocoAtivo!.filhos.removeLast();
        } else {
          blocoAtivo = null;
        }
      } else if (blocosSelecionados.isNotEmpty) {
        blocosSelecionados.removeLast();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SidebarWidget(
          onAddBloco: _adicionarBloco,
          onClearBlocos: _limparBlocos,
          onRemoveLastBloco: _removerUltimoBloco,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                blocoAtivo = null;
              });
            },
            child: Container(
              color: Colors.white,
              child: BlocosColumnWidget(
                blocos: blocosSelecionados,
                blocoAtivo: blocoAtivo,
                onBlocoTap: (Bloco bloco) {
                  setState(() {
                    blocoAtivo = bloco;
                  });
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
