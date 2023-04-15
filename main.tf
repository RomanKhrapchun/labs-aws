module "authors_table" {
    source = "./modules/dynamodb"

    taable_name = "Authors"
    context = module.default.context
}

module "courses_table" {
    source = "./modules/dynamodb"

    table_name = "Cources"
    context = module.default.context  
}

module "lambda" {
    source = "./modules/lambda"

    function_name = module.default.id
    handler = "index.handler"
    lambda_zip = "../lambda.zip"
    context = module.default.context
    runtime = "modejs18.x"
}