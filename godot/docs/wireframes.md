# Wireframes e Interface Inicial

## Objetivo
Descrever e esboçar as principais telas do MVP: seleção de clube, interface de partida, tela de recompensas.

## Estrutura sugerida

### 1. Tela de Seleção de Clube
- Elementos obrigatórios: lista de clubes (com escudo e ano), descrição/resumo do clube, botão de confirmação
- Observações: destacar características históricas de cada clube, exibir mascote ao lado do nome

**Wireframe textual:**
-----------------------------------
| [Escudo] Cruzeiro 2003   [Mascote] |
| [Escudo] Atlético-MG 78-83 [Mascote] |
| [Escudo] Flamengo 80      [Mascote] |
| [Escudo] São Paulo 92-93  [Mascote] |
-----------------------------------
| [Descrição do clube selecionado]   |
| [Botão: Confirmar]                 |
-----------------------------------

### 2. Interface de Partida
- Elementos obrigatórios: campo estilizado (visual anos 80), cartas na mão do jogador, placar, feedback textual de lances, mascotes animados
- Observações: espaço para exibir bordões, efeitos visuais de jogadas, destaque para relíquias ativas

**Wireframe textual:**
---------------------------------------------------
| [Placar]        [Relíquias Ativas]               |
| [Campo de Futebol estilizado - anos 80]          |
| [Mascote do clube à esquerda]   [Mascote rival à direita] |
| [Feedback textual: "Que beleza! Gol do Zico!"]  |
| [Cartas do jogador na parte inferior]            |
---------------------------------------------------

### 3. Tela de Recompensas Pós-Jogo
- Elementos obrigatórios: cartas/reliquias conquistadas (com destaque visual), estatísticas da partida (gols, lances, relíquias usadas), botão de avançar
- Observações: destaque para conquistas históricas, exibir bordões comemorativos

**Wireframe textual:**
---------------------------------------------
| [Cartas/Relíquias conquistadas - destaque] |
| [Estatísticas: gols, lances, relíquias]    |
| [Bordão: "Haja coração!"]                 |
| [Botão: Avançar]                          |
---------------------------------------------

---
## Critério de Vitória Antecipada

Ao final de cada turno, verifique se a diferença de gols é maior do que o número máximo de gols que o adversário pode marcar com as rodadas restantes.
Se for impossível empatar ou virar, a partida termina imediatamente e o vencedor é declarado.

**Exemplo:**
Faltam 2 turnos e o placar está 3x0. Mesmo que o adversário marque em todos os turnos restantes, só chegaria a 2 gols. O jogo termina ali.

**Vantagens:**
- Evita tempo morto e mantém o ritmo dinâmico.
- Dá feedback claro ao jogador sobre a impossibilidade de recuperação.
## Referências Visuais e Briefing de Estilo
- Estilo caricato inspirado em ilustrações do Futbox (https://www.futbox.com/pt/craques)
- Uniformes, escudos e mascotes fiéis ao período histórico de cada clube
- Cores vibrantes e traços marcantes, com destaque para expressões faciais e poses dinâmicas
- Ambientação de estádio com elementos típicos dos anos 80 (placar manual, faixas de torcida, publicidade clássica)

## Sugestões para Assets
- Sprites dos jogadores com uniformes clássicos
- Mascotes animados para cada clube
- Cartas estilizadas com bordas temáticas
- Ícones para relíquias e efeitos especiais
Inclua esboços (desenhos simples ou descrições textuais) para cada tela.
