GUIA DO SIMULADOR

PROPOSTA DO SIMULADOR:
- Demonstrar como a partir dos dados que o TAFT oferece, as ações da empresa que gerencia as rotas e horários dos ônibus, podem diminuir a quantidade de viagens por dia em uma linha, consequentemente aumentando a renda com passagens e, principalmente, diminuindo os gastos com combustível por consumir menos diariamente.

-----------------------------------------------------------

HTML:
- <link rel="stylesheet" href="style.css">: linkar com CSS externo

- <link rel="icon" href="images/bus_logo.png">: colocar ícone na aba ("rel" significa "relationship")

- class="": atribuir classe à uma tag, para editar depois no CSS externo

- <div id="div_resultado_default">: resultados ANTES do TAFT

- <div id="div_resultado_taft">: resultados DEPOIS do TAFT 

- input_distancia_km.value = null;: deixa a input vazia, sem valor, pra ficar bonitinho, RESETA os campos

- div_resultado_default.innerHTML = "";: tira todo o conteúdo da div, RESETA 

- div_resultado_default.style.border = "0px";: forma de deixar a borda invisível, para aparecer depois

- var renda_viagem = (valor_passagem * qtd_passageiros); //quanto que ele ganha de dinheiro de passagem no final do PERCURSO

- var rend_diaria = renda_viagem * viagens_diarias; //quanto que ele ganha de dinheiro de passagem no final do DIA

- var renda_mensal = rend_diaria * 30; //quanto que ele ganha de dinheiro de passagem no final do MÊS

- var litro_percurso = consumo_combustivel * distancia; //quantos litros o veículo consome em um PERCURSO completo

- var gasto_percurso = litro_percurso * preco_combustivel; //gasto de dinhero pra pagar o combustível do PERCURSO

- var litro_diario = litro_percurso * viagens_diarias; //quantos litros o veículo consome em um DIA completo

- var gasto_diario = litro_diario * preco_combustivel; //gasto de dinhero pra pagar o combustível do DIA

- span: tag vazia, como se fosse um template aberto para alterações no CSS

- var reducao_taft = (0.20);: porcentagem que o TAFT propõe reduzir das viagens diárias

- var acumulo_passageiros = (reducao_taft / 2);: passageiros que irão se realocar das viagens vazias, para as viagens que rendem para a empresa. É dividido por 2 para considerar pessoas que desistem e mudam de linha

- var num_viagens_diarias_otimizadas = (viagens_diarias - (viagens_diarias * reducao_taft));: nova quantidade de viagens com a reduçã ode 20% da TAFT

- var qtd_passageiros_nova = (qtd_passageiros + (qtd_passageiros * acumulo_passageiros));: nova quantidade de passageiros com o aumento do acumulo de pessoas aplicado

- renda_viagem = (valor_passagem * qtd_passageiros_nova); //mesma renda anterior, mas com a NOVA quantidade de passageiros

- litro_diario = litro_percurso * num_viagens_diarias_otimizadas; //mesmo com o litro diário anterior, mas com a NOVA quantidade de viagens

- .toLocaleString("pt-BR", { style: "currency", currency: "BRL" }): arrumar o número para ficar bonito e visível no padrão de Real Brasileiro. "style: currency" coloca automaticamente o "R$" antes do número.

-----------------------------------------------------------

CSS:
- height: fit-content;: deixa a div do tamanho exato do que tem dentro, se adaptando caso se adicionem ou tirem coisas, ficando maior ou menor sem precisar alterar manualmente

- border-radius: arredondar bordas

- text-align: alinhar texto

- font-weight: força da fonte/negrito

- cursor: estilo e estado do cursor do windows. ex: apontando, segurando, arrastando

- padding: margin só que dos elementos de dentro

- line-height: espaçamento entre as linhas

