# VCranium-unity

## Objetivo

Elaborar um programa que estabeleça comunicação entre um computador e os óculos **EPSON BT-350** (*Android 5.1*) 

## Planejamento da arquitetura do sistema

![alt text](https://i.imgur.com/zGdNIbB.png)

## Instalação

 - *Unity 2020.3.28f1*
 - *Python 3*
 	- ``pip install numpy``
 	- ``pip install opencv-contrib-python``
 - Android Studio: Compilador de *API 22* e *Compilation tools* (*deprecated*)

## VSCode Setup

Uma alternativa de deixar o desenvolvimento do projeto mais leve é evitar a instalação padrão do **Visual Studio 2019** que ocupa um espaço considerável em disco e se apresenta bem lento em atividades básicas.

Basta dar um *uncheck* no **Visual Studio 2019** ao instalar o **Unity 2020**, e instalar o [**Visual Studio Code**](https://ninite.com/vscode/).

Após a instalação, configure o **Unity** para usar o **VSCode** como *External Script Editor* em *Edit > Preferences > External Tools*

![alt text](https://i.imgur.com/PGEBgrU.png)

## Otimização do VSCode

A comunidade criou (e continua criando) extensões para o **VSCode** que agilizam a elaboração de *scripts* para o desenvolvedores de **Unity**

Uma lista de extensões foi sugerida pela documentação da [*Microsoft*](https://code.visualstudio.com/docs/other/unity). São elas:  
 - [Debugger for Unity](https://marketplace.visualstudio.com/items?itemName=Unity.unity-debug)
 - [Unity Tools](https://marketplace.visualstudio.com/items?itemName=Tobiah.unity-tools)
 - [Unity Code Snippets](https://marketplace.visualstudio.com/items?itemName=kleber-swf.unity-code-snippets)

# Troubleshoot

### Caso os objetos na tela estejam brancos e não funcionais, considere: 
 - Colocar os scripts em cada GameObject novamente (drag n drop), acontece por causa da falta dos arquivos \*.meta
 
### Se houver problema na visualização das caixas de texto do projeto:
 - Instalar e incluir o TMP (TextMeshPro) no projeto pelo Unity
 	- Window > TextMeshPro > Import TMP Essential Resources

### Em erros de compilação, certifique-se que:
 - Android Studio está instalado e iniciou ao menos um projeto com ele. Isso termina de instalar todas as dependencias do JDK.

### Em problemas de compilação em um dispositivo móvel:
 - DESINSTALAR os .apk antigos antes de compilar
 - Abrir o ADB tool e usar o comando: ``abd devices``
	- Verifique se ele está conectado, se não, verifique se o modo depuração está ativado e se o USB está devidamente conectado
	- O status do dispositivo deve estar ONLINE, se estiver OFFLINE, desconecte, reinicie todos os dispositivos e conecte novamente. Se persistir o problema, então verifique se os drivers estão reconhecendo a conexão e se o ADB está funcionando com outros celulares.

