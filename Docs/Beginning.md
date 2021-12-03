---
layout: default
page_in_dev: true
permalink: Docs/Beginning
---

<style>
#scriptline {
    padding: 5.1px;
    color: white;
    background-color: black;
    box-shadow: 2px 3px 7px 2px rgb(0 0 0 / 2%);
    border-radius: 5px;
}
</style>

<h1>Beginning on Jekyll Template!</h1>
<small style="color: red;">ATTENTION: THIS PAGE IS IN PT-BR please, translate if you looking to a create Websites.</small>

<h3><a href=".">Back</a></h3>

Sumario:\
<a href="#iformações-de-pastas">Iformações de Pastas</a>\
<a href="#sobre-jekyll">Sobre Jekyll</a>\
<a href="#começando-com-jekyll">Usando Jekyll</a>

---

<br>

# Iformações de Pastas

Sumario:\
<a href="#_includes">\informações</a>\
<a href="#criação-do-primeiro-aquivo">Criação do Primeiro aquivo (em custom)</a>\
<a href="#criando-arquivos-(Versão-chamavel-|-module)">Criando Arquivos (Versão chamavel | module)</a>

## <b>\_includes</b>

Bem, essa pasta é basicamente uma pasta de Incluzões exemplo: você esta tentando implementar um arquivo `.html` mas não sabe como...

dentro dessa pasta á algums arquivos:

- \_includes: <b>Inicio</b>
  - content: <b>a pasta PRINCIPAL das sub pastas como `custom` e `module`</b>
    - custom: <b>Arquivos inclusivos custumizaveis <i>(<a href="#">Criação do Primeiro aquivo</a>)</i></b>
      - footer: <b>Arquivo já definido para mudanças do roda pé do site</b>
      - header: <b>Arquivo já definido para mudanças da cabeça visivel do site</b>
      - page_empity: <b>Arquivo já definido para caso uma pagina esteja em branco</b>
    - module: <b>Aquivos chamaveis pelo arquivo `call` (NÃO SERA EXECUTADO AUTOMATICAMENTE)</b>
  - call: <b>chame qualquer script da pasta `module` como: `include call file="figures.html" type="204"`</b>
  - summon: <b>Sumona as funções que se inicia com todos os arquivos do custom</b>
  - head.html: <b>Arquivo já definido para mudanças da cabeça não visivel do site</b>

### <b>Criação do Primeiro aquivo</b>

1. Criando o Arquivo:

   - nessa etapa é necesario saber qual tipo de arquivo você ira criar se é do tipo `module` ou `custom`, lembre-se o `custom` é necesario uma confirmação para identificar o arquivo criado e apos a identificação o arquivo sera iplementado em todas as paginas acessada pelo usuário. Diferentemente do `module` ele cosiste em basicamente ser chamavel em um arquivo chamado `call` que com ele você pode chamar qualquer arquivo sem identificar nada dentro da pasta `module`.

   - okay, criando o arquivo de fato: <br> <img src="{{ site.url }}/Assets/Images/Includes1Img.png" alt="ERROR: não foi possivel carregar a demonstração..."> <br> Nessa hora é bom criar um arquivo html sem a tag de html exemplo: correto `arquivotest` errado `arquivotest.html`

   - Mais ou menos assim: <br> <img src="{{ site.url }}/Assets/Images/Includes2Img.png" alt="ERROR: não foi possivel carregar a demonstração...">

   - Criando um simples conteudo para o arquivo: <br> <img src="{{ site.url }}/Assets/Images/Includes3Img.png" alt="ERROR: não foi possivel carregar a demonstração...">

2. Identificando o Arquivo no `summon`

   - Começe identificando tipo isso: <br> <img src="{{ site.url }}/Assets/Images/Includes4Img.png" alt="ERROR: não foi possivel carregar a demonstração..."> <br> foto tirada no arquivo `summon`, essa configuração ira identificar o arquivo e quando uma pagina é aberta o `summon` ira executar esse arquivo

   <br>

3. Verificando se funcionou... <br>
   <img src="{{ site.url }}/Assets/Images/Includes5Img.png" alt="ERROR: não foi possivel carregar a demonstração..."> <br> Bom trabalho se isso apareceu funcionou :D

### <b>Criando Arquivos (Versão chamavel | module)</b>

1. Criando o Arquivo:

   - nessa etapa é necesario saber qual tipo de arquivo você ira criar se é do tipo `module` ou `custom`, lembre-se o `custom` é necesario uma confirmação para identificar o arquivo criado e apos a identificação o arquivo sera iplementado em todas as paginas acessada pelo usuário. Diferentemente do `module` ele cosiste em basicamente ser chamavel em um arquivo chamado `call` que com ele você pode chamar qualquer arquivo sem identificar nada dentro da pasta `module`.

   - okay, criando o arquivo de fato: <br> <img src="{{ site.url }}/Assets/Images/Includes1Img_module.png" alt="ERROR: não foi possivel carregar a demonstração..."> <br> Nessa hora é bom criar um arquivo html sem a tag de html exemplo: correto `arquivotest` errado `arquivotest.html`

   - Mais ou menos assim: <br> <img src="{{ site.url }}/Assets/Images/Includes2Img.png" alt="ERROR: não foi possivel carregar a demonstração...">

   - Criando um simples conteudo para o arquivo: <br> <img src="{{ site.url }}/Assets/Images/Includes3Img.png" alt="ERROR: não foi possivel carregar a demonstração...">

2. Identificando

   - diferentimente do `custom` os `module` são utilizador para ser chamados como criando imagens e mais tipo isso: <br>
     <img src="{{ site.url }}/Assets/Images/Includes1Img_modulecall.png" alt="ERROR: não foi possivel carregar a demonstração...">

   <br>

3. Verificando se funcionou... <br>
   <img src="{{ site.url }}/Assets/Images/Includes5Img.png" alt="ERROR: não foi possivel carregar a demonstração..."> <br> Bom trabalho se isso apareceu funcionou, uma coisa interesante sobre o `module` é que o arquivo só pode ser chamado pela pagina que ele foi chamado e a linha, você também pode configurar o aquivo que ao ser chamado se transformar em uma flor ou outra imagem programada que é oque acontece com o `figures` dentro de `modules`

### <b>É permitido editar os arquivos da pasta `_includes`</b>

1. Sim! aliaz é uma copia perfeita e você pode refazela a qualquer momento sinta-se avontade de explorar os arquivos e descobrir mais osbre o ``jekyll`!
