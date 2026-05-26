# ZION — Framework Vision AI

**16 agentes + 22 skills proprietárias para empresários brasileiros automatizarem o negócio com Claude Code.**

ZION transforma o Claude Code em copiloto de negócios completo: vendas, marketing, financeiro, operação, RH, jurídico, tributário, tráfego pago, segurança, conteúdo e mídia — tudo no mesmo terminal, com agentes e skills que falam a língua do empresário brasileiro.

---

## Instalação rápida (recomendada — tudo online)

Dentro do Claude Code (Web, Desktop, Mobile ou Terminal), digite:

```
/plugin marketplace add Douglas8832/zion
/plugin install zion-pack@vision-zion
```

Pronto. Em segundos os 16 agentes e as 22 skills estão disponíveis na sua sessão.

Para verificar:

```
/plugin list
/agents
```

---

## O que vem dentro

### 16 Agentes ZION

| Agente | O que faz |
|---|---|
| `zion-vendas` | Pipeline, propostas, follow-up, qualificação, objeções, métricas (CAC/LTV) |
| `zion-marketing` | Conteúdo, ads, posicionamento, branding, funil AARRR, growth |
| `zion-financeiro` | Fluxo de caixa, DRE, projeções, precificação, ponto de equilíbrio |
| `zion-operacao` | SOPs, mapeamento de processos, gargalos, OKRs operacionais |
| `zion-rh` | Recrutamento, onboarding, feedback (SBI), performance, cultura |
| `zion-juridico` | Análise contratual preliminar SMB BR, riscos jurídicos, LGPD |
| `zion-email-executivo` | Emails em 3 variantes (executivo / consultivo / relacional) |
| `zion-proposta` | Proposta comercial completa em 12 seções premium |
| `zion-relatorio` | Relatório mensal executivo consolidado com semáforos |
| `zion-reuniao` | Transcrição → decisões + tarefas + bloqueios + follow-up |
| `zion-conteudo` | Posts LinkedIn, captions Instagram, roteiros YouTube |
| `zion-trillion-board` | Board de mentores: Senna, Buffett, Bezos, Jobs, Munger |
| `zion-trafego-pago` | Auditoria Meta + Google Ads, benchmarks 2026 BR |
| `zion-tax` | Simples vs Lucro Presumido vs Real, reforma tributária IBS/CBS |
| `zion-security` | OWASP Top 10 2025, segredos expostos, RLS Supabase |
| `zion-orquestra` | Meta-coordenador: distribui demanda para os outros agentes |

### 22 Skills Vision AI

**Negócio (15):** weekly-sprint-planner, trafego-pago-auditor, trillion-board, security-audit, mentor-coach-empresarial, juridico-counsel, tax-board, licitacao-board, email-redator-executivo, reuniao-resumo-acionavel, proposta-comercial-gerador, dashboard-financeiro-mensal, recrutamento-triagem, crise-comunicacao, claude-os-onboarding

**Mídia + Conteúdo (6):** carrossel-instagram-generator, instagram-automation, manychat-claude-dm, nano-banana-criativos, veo-videos, brandbook-prompt-system

**Premium (1):** vision-premium-deck — geração de decks executivos com narrativa McKinsey/BCG e design system Vision

---

## Como usar

Depois de instalado, basta conversar normalmente com o Claude. Ele invoca o agente ou skill certo automaticamente. Exemplos:

```
> preciso revisar o pipeline de vendas e definir prioridades da semana
→ ativa zion-vendas + weekly-sprint-planner

> auditar minha conta Meta Ads, gastei 12k esse mês com CPL R$ 38
→ ativa zion-trafego-pago + trafego-pago-auditor

> chamar o trillion-board pra decidir se contrato 3 vendedores ou um head
→ ativa zion-trillion-board

> gerar uma proposta comercial pro cliente Acme baseada nesse briefing
→ ativa zion-proposta + proposta-comercial-gerador

> audita esse repo procurando chaves expostas e RLS quebrado
→ ativa zion-security + security-audit
```

Para invocar manualmente um agente específico:

```
> @zion-financeiro analise meu fluxo de caixa dos últimos 3 meses
```

---

## Atualização

```
/plugin update zion-pack@vision-zion
```

## Desinstalação

```
/plugin uninstall zion-pack@vision-zion
/plugin marketplace remove vision-zion
```

---

## Fallback: instalação manual no terminal

Se preferir baixar localmente em vez de usar o marketplace:

```bash
curl -fsSL https://raw.githubusercontent.com/Douglas8832/zion/main/INSTALL.sh | bash
```

---

## Licença

MIT. Use, modifique, distribua. Atribuição à Vision AI é apreciada.

## Suporte

- Site: https://visioncompany.ai
- Email: contato@visioncompany.ai
- Issues: https://github.com/Douglas8832/zion/issues
