import 'package:flutter/material.dart';

/// Widget que representa a barra lateral com opções de blocos coloridos.
class SidebarWidget extends StatelessWidget {
  final void Function(Color) onAddBloco;
  final VoidCallback onClearBlocos;
  final VoidCallback onRemoveLastBloco;

  const SidebarWidget({
    super.key,
    required this.onAddBloco,
    required this.onClearBlocos,
    required this.onRemoveLastBloco,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      color: Colors.grey[200],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _buildSidebarBloco(Colors.brown),
          _buildSidebarBloco(Colors.green),
          _buildSidebarBloco(Colors.blue),
          _buildSidebarBloco(Colors.red),
          _buildSidebarBloco(Colors.yellow),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: onClearBlocos,
            child: const Text('Limpar'),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: onRemoveLastBloco,
            child: const Text('Remover'),
          ),
        ],
      ),
    );
  }

  Widget _buildSidebarBloco(Color cor) {
    return GestureDetector(
      onTap: () => onAddBloco(cor),
      child: Container(
        height: 50,
        color: cor,
        margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      ),
    );
  }
}
