---
layout: default
page_in_dev: true
permalink: Documentation/folders/includes_folder
---

<style>
   
</style>

## <b>\_includes</b>

Sumario:

- <a onclick="sumario(1)" href="#informações-importantes">Informações importantes</a>
- <a onclick="sumario(2)" href="#criação-do-primeiro-aquivo-versão-custom">Criação do Primeiro aquivo em custom</a>
- <a onclick="sumario(3)" href="#criando-arquivos-versão-module">Criação do Primeiro aquivo em Module</a>
- <a onclick="sumario(4)" href="#é-permitido-editar-os-arquivos-da-pasta-includes">É permitido editar os arquivos da pasta includes?</a>

<h1>Includes <br> Arquivos chamaveis e fácil de utilizar</h1>

<hr>

<br><br><br>

### <b id="1">Informações importantes</b>

1. Onde posso ver se ocorreu um erro?
   - Os erros ira aparecer no `console` do Website

### <b id="2">Criação do Primeiro aquivo Versão Custom</b>

1. Criando o Arquivo:

   - nessa etapa é necesario saber qual tipo de arquivo você ira criar se é do tipo `module` ou `custom`, lembre-se o `custom` é necesario uma confirmação para identificar o arquivo criado e apos a identificação o arquivo sera iplementado em todas as paginas acessada pelo usuário. Diferentemente do `module` ele cosiste em basicamente ser chamavel em um arquivo chamado `call` que com ele você pode chamar qualquer arquivo sem identificar nada dentro da pasta `module`.

   - okay, criando o arquivo de fato: <br> <img src="{{ site.url }}/Assets/Images/Includes1Img.png" alt="ERROR: não foi possivel carregar a demonstração..."> <br> Nessa hora é bom criar um arquivo html sem a tag de html exemplo: correto `arquivotest` errado `arquivotest.html`

   - Mais ou menos assim: <br> <img src="{{ site.url }}/Assets/Images/Includes2Img.png" alt="ERROR: não foi possivel carregar a demonstração...">

   - Criando um simples conteudo para o arquivo: <br> <img src="{{ site.url }}/Assets/Images/Includes3Img.png" alt="ERROR: não foi possivel carregar a demonstração...">

2. Cofigurando _**(Atualizado)**_

 <p><b style="color: Red;"><spam style="color: ;">ATENÇÃO:</spam> não sera mais preciso adicionar o nome do arquivo no "Summon"</b></p>

- Confirmando a existencia do arquivo é simples <br> <img src="{{ site.url }}/Assets/Images/Includes4Img.png" alt="ERROR: não foi possivel carregar a demonstração..."> <br> foto tirada no arquivo `summon`, essa configuração ira identificar o arquivo e quando uma pagina é aberta o `summon` ira executar esse arquivo\_

   <br>

3. Verificando se funcionou... <br>
   <img src="{{ site.url }}/Assets/Images/Includes5Img.png" alt="ERROR: não foi possivel carregar a demonstração..."> <br> Bom trabalho se isso apareceu funcionou :D

### <b id="3">Criando Arquivos Versão Module</b>

1. Criando o Arquivo:

   - nessa etapa é necesario saber qual tipo de arquivo você ira criar se é do tipo `module` ou `custom`, lembre-se o `custom` é necesario uma confirmação para identificar o arquivo criado e apos a identificação o arquivo sera iplementado em todas as paginas acessada pelo usuário. Diferentemente do `module` ele cosiste em basicamente ser chamavel em um arquivo chamado `call` que com ele você pode chamar qualquer arquivo sem identificar nada dentro da pasta `module`.

   - okay, criando o arquivo de fato: <br> <img src="{{ site.url }}/Assets/Images/Includes1Img_module.png" alt="ERROR: não foi possivel carregar a demonstração..."> <br> Nessa hora é bom criar um arquivo html sem a tag de html exemplo: correto `arquivotest` errado `arquivotest.html`

   - Mais ou menos assim: <br> <img src="{{ site.url }}/Assets/Images/Includes2Img.png" alt="ERROR: não foi possivel carregar a demonstração...">

   - Criando um simples conteudo para o arquivo: <br> <img src="{{ site.url }}/Assets/Images/Includes3Img.png" alt="ERROR: não foi possivel carregar a demonstração...">

2. Chamando

   - diferentimente do `custom` os `module` são utilizador para ser chamados como criando imagens e mais tipo isso: <br>
     <img src="{{ site.url }}/Assets/Images/Includes1Img_modulecall.png" alt="ERROR: não foi possivel carregar a demonstração...">

   <br>

3. Verificando se funcionou... <br>
   <img src="{{ site.url }}/Assets/Images/Includes5Img.png" alt="ERROR: não foi possivel carregar a demonstração..."> <br> Bom trabalho se isso apareceu funcionou, uma coisa interesante sobre o `module` é que o arquivo só pode ser chamado pela pagina que ele foi chamado e a linha, você também pode configurar o aquivo que ao ser chamado se transformar em uma flor ou outra imagem programada que é oque acontece com o `figures` dentro de `modules`

### <b id="4">É permitido editar os arquivos da pasta includes?</b>

1. Sim! alias é uma copia perfeita e você pode refazela a qualquer momento sinta-se avontade de explorar os arquivos e descobrir mais osbre o `jekyll`!

{% script %}
function sumario(tipo) {
const titulo = document.getElementById(tipo)
const normal_background_color = titulo.style["background-color"]
titulo.style = "background-color: yellow"
setTimeout(() => {
titulo.style = `background-color: ${normal_background_color}`
}, 3000)
}
{% endscript %}
