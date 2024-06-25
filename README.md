# CoordinatorExample

Este projeto é um exemplo básico de uma aplicação iOS utilizando ViewCode para construir a interface, constraints para posicionamento de elementos na tela, e o padrão Coordinator para gerenciar a navegação entre telas.

## Objetivo

O objetivo deste projeto é demonstrar como configurar um aplicativo iOS sem o uso de Storyboards, utilizando ViewCode para criar a interface programaticamente e o padrão Coordinator para organizar a navegação entre as telas.

## Estrutura do Projeto

O projeto está estruturado da seguinte forma:

<img width="312" alt="Captura de Tela 2024-06-25 às 14 54 56" src="https://github.com/souzadbr/Coordinator_Estudos/assets/81527964/0fdb47b1-6bf5-4cea-95fd-28b8ad10d0ee">


## Passos Realizados

### 1. Criar o Projeto e Estrutura Básica

1. **Criar um novo projeto no Xcode**:
   - Nome: `Coordinator_Estudos`
   - Linguagem: `Swift`
   - Desmarcar "Use SwiftUI"
2. **Configurar a estrutura básica do projeto**.

### 2. Remover o Storyboard

1. **Remover `Main.storyboard`**:
   - Selecionar `Main.storyboard` na barra lateral.
   - Clicar com o botão direito e selecionar "Delete".
   - Confirmar a exclusão.
2. **Atualizar `Info.plist`**:
   - Remover a entrada `Main storyboard file base name`.

### 3. Configurar o Coordenador

1. **Criar o protocolo `Coordinator`**:
   - Criar um arquivo `Coordinator.swift` na pasta `Coordinators`.

```swift
protocol Coordinator {
    var navigationController: UINavigationController { get set }
    func start()
}

