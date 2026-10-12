# Gif-Emulator 📷
## Breve Descrição 📃
O Gif-Emulator é exatamente o que o nome diz: faz nada mais do que somente reproduzir gifs. Esse programa é simplesmente uma forma mais divertida de criar janelas com GIFs e, invez de aparecer um monte de botões na tela, tudo é preparado pelo usuário antes para que nada te atrapalhe. Isso pode ser útil para aqueles que gostariam de reproduzir GIFs em sua área de trabalho, como para um vídeo do youtube, por exemplo.  
<img width="814" height="624" alt="Demonstração" src="READMEASSETS/Demonstração1" />  
<figcaption><i>Figura 1: Usuário usando aplicativo pela primeira vez.</i></figcaption>


## Pré-requisitos 🔧
A única coisa que você precisará, além do próprio programa, é o aplicativo do Love2D, onde o programa acontece. Você pode instala-lo no seguinte link: https://love2d.org/

## Exemplo de uso 🧩
<figure>
  <img width="978" height="466" alt="Demonstração2" src="READMEASSETS/Demonstração2" />
  <figcaption><i>Figura 2: Um usuário lendo um texto junto com um hamster como companhia.</i></figcaption>
</figure>

## Como utilizá-lo 💻
### 1. Faça um spritesheet para o seu GIF
Um spritesheet é uma imagem só que contêm várias outras imagens. Esse conjunto de imagens podem ser usados para criar imagens animadas. Para fazer um, pode ser utilizado o seguinte site: https://spritesheetgenerator.online/
### 2. Substitua o spritesheet que já está no programa pelo novo spritesheet.
Extraia o arquivo .zip do aplicativo para poder fazer mudanças. Quando fizer isso, entre na pasta chamada "Assets" e substitua a imagem com o nome "spritesheet.png" pela nova.
**⚠️ CUIDADO: O nome da nova imagem tem que ser EXATAMENTE "spritesheet.png", se não o programa não conseguirá achar a imagem.**
### 3. Ajuste GridSize.txt
Na mesma pasta, abra "GridSize.txt" e insira a quantidade de imagens no eixo X na primeira linha e a quantidade de imagens no eixo Y na segunda linha. Após fazer isso, salve novamente o arquivo com o mesmo nome.
### 4. Abra o aplicativo
Agora tudo está pronto para o seu uso. Arraste a pasta para o aplicativo do Love2D e o programa iniciará.
## 5. Controles
O programa contêm poucos controles, e eles são:  
● Mudar o tamanho da janela arrastando os cantos, como quase qualquer outra janela;  
● Pressione "B" para remover as bordas;  
● Mover a janela arrastando o canto superior
