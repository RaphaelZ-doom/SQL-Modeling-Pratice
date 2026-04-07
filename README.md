🗄️ SQL Server Relational Modeling & Implementation

Este repositório documenta o processo de modelagem, implementação e consulta de um banco de dados relacional robusto, utilizando SQL Server em um ambiente containerizado com Docker. O foco principal e aplicar padrões de Engenharia de Software para garantir a integridade dos dados e a escalabilidade das consultas.

🛠️ Stack Técnica

Engine: Microsoft SQL Server

Ambiente: Docker (Infraestrutura como código para persistência de dados)

Client: DBeaver 26.0.2 (Interface de gerenciamento e visualização de ER)

Linguagem: T-SQL (Transact-SQL)

🏗️ Arquitetura do Repositório

/src: Scripts de criação de tabelas (DDL) e inserção de dados (DML).

/queries: Consultas complexas utilizando múltiplos JOINs, WHERE e filtros de regras de negócio.

/docs: Diagrama Entidade-Relacionamento (DER) e documentação do minimundo.

🧠 Destaques de Engenharia
Diferente de scripts SQL básicos, este repositório demonstra o domínio de:

Gerenciamento de Identidade: Manipulação de colunas IDENTITY e compreensão do comportamento do contador do banco.

Integridade Referencial: Implementação de restrições de FOREIGN KEY para evitar dados órfãos e garantir a consistência entre entidades (Usuário -> Aluno/Professor).

Consultas Relacionais: Construção de "Relatórios Master" utilizando encadeamento de INNER JOINs para navegar por tabelas associativas (N:N).

Padronização de Tipos: Tratamento de tipos de dados sensíveis como DATE (ISO 8601) e strings de tamanho fixo/variável.
