# ⛏️ Project: The Data Miner (DataOps Edition)

Este projeto tem como objetivo construir um pipeline de ingestão de dados "Cloud-Native". A ideia é integrar conceitos de **Infraestrutura como Código (IaC)** com **Desenvolvimento Serverless** em Python para automatizar a extração e armazenamento de dados.

## 🏗️ Arquitetura
1. **Terraform**: Provisionamento de um Bucket S3, Lambda Function, IAM Roles e CloudWatch Events.
2. **Python**: Lógica de extração de uma API externa e persistência no Data Lake (S3).
3. **AWS EventBridge**: Orquestração do agendamento (Cron job).

---

## 🎯 Objetivos do Desafio

### Fase 1: Fundação (Infraestrutura)
- [x] Configurar o arquivo `provider.tf` para autenticação na AWS.
- [x] Criar um recurso de **Bucket S3** via Terraform.
- [x] Definir a **IAM Role** e a **Policy** que permite à Lambda escrever logs e objetos no S3.
- [x] Implementar o recurso `archive_file` no Terraform para automatizar o empacotamento (.zip) do código Python.

### Fase 2: A Lógica (Desenvolvimento)
- [x] Criar o esqueleto da função `lambda_handler` em Python.
- [ ] Implementar um request HTTP para uma API pública (ex: Open-Meteo ou JSONPlaceholder).
- [ ] Integrar a biblioteca **Boto3** para salvar o JSON de resposta no Bucket S3 criado.
- [ ] Passar o nome do Bucket para a Lambda através de **Variáveis de Ambiente** configuradas no Terraform.

### Fase 3: Automação & DevOps
- [ ] Configurar uma regra no **AWS EventBridge** para disparar a função automaticamente.
- [ ] Validar o fluxo de logs através do **Amazon CloudWatch**.
- [ ] Garantir que o comando `terraform destroy` limpa todos os recursos sem erros.

---

## 📚 Documentação de Apoio Principal

- **Terraform AWS Provider:** [registry.terraform.io/providers/hashicorp/aws](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)
- **Boto3 S3 Reference:** [boto3.amazonaws.com - S3 Client](https://boto3.amazonaws.com/v1/documentation/api/latest/reference/services/s3.html)
- **AWS Lambda Python Handler:** [docs.aws.amazon.com/lambda/python-handler](https://docs.aws.amazon.com/lambda/latest/dg/python-handler.html)
- **Public API for Testing:** [Open-Meteo API](https://open-meteo.com/en/docs)

---

## 🛠️ Como executar
1. Inicializar o Terraform: `terraform init`
2. Planejar a infraestrutura: `terraform plan`
3. Aplicar as mudanças: `terraform apply`
