# Relatório final Fapesp 2022

## Instalação

- Instalar [**Visual Studio Code**](https://ninite.com/vscode/).
	- Adicionar o *plugin* [**LaTeX Workshop**](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop).
- Instalar [**MiKTeX**](https://miktex.org/download).
- Instalar [**Strawberry Perl**](https://strawberryperl.com/).

## MiKTeX Setup

Após a instalação do *MiKTeX*, abra o *MiKTeX* *Console* no seu computador. 

Clique no botão ``Check for updates`` e instale todas as atualizações na aba *Update*.

![alt text](https://i.imgur.com/LKoJxyI.png)

## Compilação do documento no VSCode

Ao primeiro momento, o projeto deve parecer assim no *VSCode*

![alt text](https://i.imgur.com/VgpmmIy.png)

A primeira compilação demora bastante (cerca de 1 a 2 minutos) 
e pode ser reparada na parte de baixo do *VSCode* com a palavra *Build* e uma animação de um carregamento.

![alt text](https://i.imgur.com/LEV9cLd.png)

Após a compilação, as pastas devem ficar assim:

![alt text](https://i.imgur.com/HVBMMUx.png)

Infelizmente, diversos arquivos temporários são criados, mas é **sugerido** que não os deletemos
para nao atrasar a compilação.

Após isso, não é mais necessário apertar o botão de compilação, o sistema faz a atualização automática
``.pdf`` apenas ao apertar ``Ctrl + S``.

Uma sugestão de deixar a visualização melhor ainda é deixar o documento aberto simultâneamente
 em uma aba na lateral e usar as configurações: 

 ```json
 {
    "files.exclude": {
        "*.aux": true,
        "*.bbl": true,
        "*.bcf": true,
        "*.blg": true,
        "*.fdb_latexmk": true,
        "*.fls": true,
        "*.gitignore": true,
        "*.log": true,
        "*.out": true,
        "*.bgl": true,
        "*.run.xml": true,
        "*.toc": true,
        "*.run": true,
        "*.synctex.gz": true
    }
}
 ```

