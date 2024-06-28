# CoordinatorExample

Este projeto é um exemplo básico de uma aplicação iOS utilizando ViewCode para construir a interface, constraints para posicionamento de elementos na tela, e o padrão Coordinator para gerenciar a navegação entre telas.

## Objetivo

O objetivo deste projeto é demonstrar como configurar um aplicativo iOS sem o uso de Storyboards, utilizando ViewCode para criar a interface programaticamente e o padrão Coordinator para organizar a navegação entre as telas.

Entre a Second e ThirdViewController foi usado delegate para navegação para usar de exemplo para aplicacoes que não tem coordinator implmentado. 

Foi feito um delegate entre as ultimas telas para carregar informacoes coletadas de uma tela e gerar um resumo ou recibo na ultima tela também como exemplo de usop de delegate para arrastar dados de uma controler para outra. 

## Estrutura do Projeto

O projeto está estruturado da seguinte forma:

<img width="394" alt="Captura de Tela 2024-06-28 às 08 18 45" src="https://github.com/souzadbr/Coordinator_Estudos/assets/81527964/55927464-c10c-448b-8d56-34d8e9422f2b">

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

2. **Implementar AppCoordinator**:
    - Criar um arquivo AppCoordinator.swift na pasta Coordinators.
    
3. **Implementar MainCoordinator**:
    - Criar um arquivo MainCoordinator.swift na pasta Coordinators.
    
4. **Adicionar as ViewControllers**:
    - Criar FirstViewController:
    - Criar um arquivo FirstViewController.swift na pasta ViewControllers.
    
5. **Criar SecondViewController**:
    - Criar um arquivo SecondViewController.swift na pasta ViewControllers.
    
6. **Criar ThirdViewController**:
    - Criar um arquivo ThirdViewController.swift na pasta ViewControllers.

7. **Criar FourthViewController**:
    - Criar um arquivo FourthViewController.swift na pasta ViewControllers.
    
8. **Criar SummaryViewController**:
    - Criar um arquivo SummaryViewController.swift na pasta ViewControllers.
    
  ##  Conclusão
Este projeto demonstra como configurar uma aplicação iOS utilizando ViewCode, constraints e o padrão Coordinator, sem o uso de Storyboards. A utilização desses padrões e práticas ajuda a manter o código organizado, modular e fácil de manter, além de proporcionar maior flexibilidade na construção de interfaces e navegação.



