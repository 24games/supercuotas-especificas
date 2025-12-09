# 24Games - Supercuota Haaland vs Mbappé

Landing page e funil interativo para promoção de supercuota comparando Haaland vs. Mbappé.

## Arquivos

- `index.html` - Landing page estática original
- `quiz.html` - Funil interativo em React (Quiz de escolha de jogador)

## Estrutura do Funil Interativo

O arquivo `quiz.html` contém um funil interativo com 3 etapas:

1. **Etapa 0 (Hero)**: Apresentação inicial com call-to-action
2. **Etapa 1 (Seleção)**: Escolha entre Haaland ou Mbappé
3. **Etapa 2 (Resultado)**: Exibição das estatísticas do jogador escolhido + CTA final

## Tecnologias

- React 18 (via CDN)
- Tailwind CSS
- Animações CSS nativas
- Glassmorphism effects

## Configuração Vercel

O projeto está configurado para deploy automático na Vercel através do arquivo `vercel.json`.

## Links

- Landing Page: `/` ou `/index.html`
- Funil Interativo: `/quiz` ou `/quiz.html`

## Personalização

### Adicionar Logo
Edite o placeholder no arquivo `quiz.html` na linha com `<!-- TODO: Adicione a logo aqui -->`

### Adicionar Background
Edite o placeholder no arquivo `quiz.html` na linha com `<!-- TODO: BACKGROUND IMAGE HERE -->`

### Adicionar Links de Conversão
Edite as variáveis `link` no objeto `playersData` no arquivo `quiz.html`:
- `LINK_HAALAND_AQUI`
- `LINK_MBAPPE_AQUI`




