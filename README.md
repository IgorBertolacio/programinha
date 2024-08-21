# Programinha

## Introdução

Este projeto faz parte de uma entrega de atividade do curso de Engenharia da Computação, na disciplina de Compiladores, cujo objetivo é criar ou simular uma linguagem de programação. O foco deste projeto é oferecer uma forma simples e intuitiva para aprender lógica computacional, utilizando uma linguagem em português, voltada para iniciantes. A ideia é proporcionar uma transição fácil para outras linguagens mais utilizadas no mercado.

## Funcionalidades

- **Linguagem Simples**: A linguagem foi criada pensando no aprendizado de iniciantes, permitindo uma fácil transição para linguagens mais populares no mercado.
- **Entrada e Saída de Dados**: Suporte a operações básicas de entrada e saída, permitindo a interação do usuário com o programa.
- **Condições**: Implementação de estruturas condicionais para tomada de decisões.
- **Operações Matemáticas Básicas**: Suporte para as principais operações matemáticas (adição, subtração, multiplicação e divisão).
- **Laços de Repetição**: Estruturas de repetição para executar blocos de código múltiplas vezes, facilitando a compreensão de loops.

## Versão Mobile

Além da versão para desktop, o projeto também oferece uma versão mobile com uma interface front-end intuitiva baseada em blocos, que torna a programação mais visual e acessível, especialmente para iniciantes.

## Estrutura de Pastas (Clean Architecture)

O projeto foi estruturado seguindo os princípios da Clean Architecture, conforme descrito abaixo:

```
lib/
├── core/
│   └── widgets/
│       └── color_block_widget.dart
├── domain/
│   └── entities/
│       └── bloco.dart
├── presentation/
│   ├── pages/
│   │   └── my_home_page.dart
│   ├── widgets/
│   │   ├── blocos_column_widget.dart
│   │   └── sidebar_widget.dart
│   └── my_app.dart
└── main.dart
```

### Descrição das Pastas

- **core**: Contém os widgets básicos e elementos reutilizáveis em todo o aplicativo.
- **domain**: Define as entidades principais do domínio do aplicativo.
- **presentation**: Inclui as telas (pages) e widgets específicos da interface do usuário.
- **main.dart**: Arquivo principal que inicia o aplicativo.

## Como Executar

1. Clone o repositório para sua máquina local.
2. Navegue até o diretório do projeto.
3. Execute o comando `flutter run` para iniciar o aplicativo.

Este projeto foi desenvolvido utilizando Flutter, portanto, certifique-se de que você tenha o ambiente de desenvolvimento Flutter corretamente configurado em sua máquina.
