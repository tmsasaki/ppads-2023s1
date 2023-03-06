<h2><a href= "https://www.mackenzie.br">Universidade Presbiteriana Mackenzie</a></h2>
<h3><a href= "https://www.mackenzie.br/graduacao/sao-paulo-higienopolis/sistemas-de-informacao">Sistemas de Informação</a></h3>


<font size="+12"><center>
*&lt;Nome do Projeto&gt;*
</center></font>

>*Observação 1: A estrutura inicial deste documento é só um exemplo. O seu grupo deverá alterar esta estrutura de acordo com o que está sendo solicitado na disciplina.*

>*Observação 2: O índice abaixo não precisa ser editado se você utilizar o Visual Studio Code com a extensão **Markdown All in One**. Essa extensão atualiza o índice automaticamente quando o arquivo é salvo.*

**Conteúdo**

- [Autores](#autores)
- [Descrição do projeto](#descrição-do-projeto)
- [Diagrama de casos de uso](#diagrama-de-casos-de-uso)
- [Descrição dos casos de uso](#descrição-dos-casos-de-uso)
- [Protótipos de tela](#protótipos-de-tela)
- [Modelo de domínio](#modelo-de-domínio)
- [Decisões de arquitetura](#decisões-de-arquitetura)
- [Diagrama de implantação](#diagrama-de-implantação)
- [Referências](#referências)


# Autores

*Arthur Hardt - 32159341 <br>
Gabriel Carvalho - <br>
Gustavo Carmassi - 32046693 <br>
Gustavo Direnzi - 31948421 <br>*


# Descrição do projeto

Um sistema de presenças para a escola Octógono

# Diagrama de casos de uso

![image](https://user-images.githubusercontent.com/85083155/221701544-919bfd2d-9c46-4c2e-a7c0-e8f778cb759a.png)

# Descrição dos casos de uso

**1. Realizar Chamada:**
O professor acessa o sistema para registrar a presença dos alunos na sala de aula.
O sistema apresenta a lista de alunos matriculados na turma.
O professor marca a presença dos alunos ausentes ou tardios.
O sistema registra a presença dos alunos e atualiza a lista de presença.


**2. Gerar Relatório Diário:**
O professor acessa o sistema para gerar um relatório diário sobre a presença dos alunos na 
turma.
O sistema apresenta as opções de escolha das turmas (sala de aula).
O professor seleciona a turma para a qual deseja gerar o relatório.
O sistema apresenta o relatório com as informações sobre a presença dos alunos na turma.


**3. Gerenciar Salas de Aula:**
O professor acessa o sistema para gerenciar as informações sobre as salas de aula.
O sistema apresenta as opções de gerenciamento (adicionar, editar ou excluir informações 
sobre as salas de aula).
O professor seleciona a opção desejada e realiza as alterações necessárias.
O sistema atualiza as informações sobre as salas de aula.


**4. Gerenciar Informações dos Alunos:**
O professor acessa o sistema para gerenciar as informações sobre os alunos matriculados na 
turma.
O sistema apresenta as opções de gerenciamento (adicionar, editar ou excluir informações 
sobre os alunos).
O professor seleciona a opção desejada e realiza as alterações necessárias.


**5. Enviar Notificação aos Responsáveis:**
O sistema verifica a presença dos alunos na turma.
Se um aluno tiver faltado em mais de 20% das aulas (80% ou menos de presença), o sistema 
envia uma notificação por e-mail aos responsáveis do aluno.
O e-mail contém as informações sobre as faltas do aluno e um aviso sobre a importância da 
frequência escolar.

# Protótipos de tela

![image](https://user-images.githubusercontent.com/85083155/221700466-77229d5c-cb25-4566-adc4-db558216d510.png)

![image](https://user-images.githubusercontent.com/85083155/221700407-98cb166a-b97a-49da-ae24-02ae3ef7bc5b.png)

![image](https://user-images.githubusercontent.com/85083155/221700608-b7438945-b76e-4699-89e2-e475028d2d40.png)

![image](https://user-images.githubusercontent.com/85083155/221700652-79f2986f-50e7-4911-93ce-04b81099fb8d.png)

![image](https://user-images.githubusercontent.com/85083155/221700693-b154a7c1-c5fc-4c56-8a6b-279a381a7106.png)


# Modelo de domínio

![image](https://user-images.githubusercontent.com/85083155/223224627-fbeba4ea-ab93-48bb-80b4-32534009d9b3.png)

# Decisões de arquitetura

Vamos utilizar para fazer o front-end as linguagens HTML, CSS e JavaScript junto com o framework do AngularJS e para o backend iremos usar NestJs.
Para o banco de dados será usado o ElephantSQL.

# Referências

*&lt;Lista de referências&gt;*
