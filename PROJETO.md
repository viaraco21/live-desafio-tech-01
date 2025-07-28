Automação com Terraform
Objetivo do projeto
O objetivo é automatizar o processo de criação e manutenção do ambiente para execução dos projetos de Software da Mr. Fusion Solutions.

Premissas do Projeto
Para o desenvolvimento do projeto, foram levantadas as seguintes premissas:

Utilizar o Terraform como ferramenta de infraestrutura como código.
O cluster Kubernetes deve ser criado utilizando o serviço Elastic Kubernetes Service (EKS) da AWS.
O projeto deve ser o mais simples e reaproveitável possível.
Toda vez que houver alteração no código Terraform na branch main do repositório, a pipeline deve ser executada.
Só vai haver um ambiente Kubernetes (os ambientes de desenvolvimento, homologação e produção serão separados por namespace).
Tecnologias utilizadas no projeto
AWS
S3
EKS
AWS CLI
Terraform
AWS Provider
AWS VPC Terraform module
AWS EKS Terraform module
GitHub
GitHub Actions
Motivações para o uso de cada tecnologia
EKS - Requisito do projeto.
S3 - Foi adotado para armazenar o estado atual do projeto Terraform. Foi definido o seu uso por ser um serviço da própria AWS e ter controle de versionamento dos arquivos.
GitHub Actions - Requisito do projeto.
Instruções para executar
A pipeline de criação ou atualização do projeto é executada sempre que o código Terraform do projeto for alterado na branch main.

Configurações
As variáveis de configuração do projeto estão no arquivo terraform.tfvars, exceto as variáveis consideradas sensiveis que estão no gerenciador de secrets do GitHub Actions.

Variáveis armazendas em secrets:

AWS_ACCESS_KEY_ID => Access Key utilizada para configurar o AWS CLI.

AWS_SECRET_ACCESS_KEY => Secret access Key utilizada para configurar o AWS CLI.

AWS_BUCKET_NAME => Nome do Bucket utilizado para armazenar o estado do projeto Terraform.

AWS_BUCKET_FILE => Nome do arquivo utilizado para armazenar o estado do projeto Terraform.

Estrutura da solução
Diagrama do projeto

Explicação do Fluxo

Possíveis evoluções do projeto
Algumas evoluções que sugiro para o projeto:

Separar ambientes dev, homolog e prod utilizando o Terraform Workspace ou Terraform Grunt para criação e gerenciamento desses ambientes.
Usar o DynamoDB junto com o S3 para evitar execução paralela do Terraform.
...

Desafio Técnico: Implementação de um Cluster Kubernetes com Terraform e Automação via GitHub Actions
Esse desafio foi resolvido na live abaixo Fabricio Veronez:
https://www.youtube.com/watch?v=OhV-pXgeVq4

Contexto
Mr. Fusion Solutions, uma startup de tecnologia inovadora no campo de energia, está buscando expandir suas operações e precisa melhorar a qualidade e eficiência de seus processos de desenvolvimento e deployment dos seus softwares. A empresa deseja implementar uma base escalável e robusta usando Kubernetes, que possa suportar o rápido crescimento e a necessidade de atualizações contínuas de suas aplicações. E foi definido que você será essa pessoa que vai entregar essa solução escalável para a Mr. Fusion Solutions.

Objetivo
O objetivo deste desafio é criar um projeto para provisionar um cluster Kubernetes na AWS usando o Amazon EKS (Elastic Kubernetes Service) de forma automatizada. Após a criação do cluster, você deverá configurar uma pipeline usando GitHub Actions que automatize o processo de criação e manutenção desse cluster Kubernetes. Com o objetivo de suportar a escala de diversos microsserviços da Mr. Fusion Solutions.

Etapas do projeto
Criação do Cluster Kubernetes:

Utilize Terraform para criar um cluster Kubernetes usando Amazon EKS.
O cluster deve ter no mínimo dois nós de worker node.
Pipeline com GitHub Actions:

Desenvolva uma pipeline utilizando GitHub Actions.
A pipeline deve ser executada sempre que houver alteração na base do projeto Terraform.
Documentação:

Documente o processo de criação e os requisitos necessários para inicializar e gerenciar o cluster.
Inclua possíveis melhorias no projeto.
Critérios de Avaliação
Modo de Implementação: O cluster Kubernetes deve ser inicializado corretamente e atender os requisitos.
Qualidade do Código: O código Terraform deve ser claro, bem organizado e seguir as melhores práticas de desenvolvimento e reaproveitamento.
Funcionalidade da Pipeline: A pipeline de deve funcionar sem erros, realizando todas as tarefas especificadas.
Documentação: A documentação deve ser completa, clara e fornecer todos os detalhes necessários para que outros profissionais possam reproduzir o processo.
