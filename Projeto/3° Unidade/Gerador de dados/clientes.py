import random
import faker

fake = faker.Faker('pt_BR')

def generate_cpf():
    return ''.join([str(random.randint(0, 9)) for _ in range(11)])

def generate_sql_insert(num_records=100):
    sql_statements = []
    for _ in range(num_records):
        nome = fake.name().replace('"', '""')  # Escapa aspas duplas
        cpf = generate_cpf()
        telefone = fake.msisdn()[:11]  # Garante formato correto
        logradouro = fake.street_name().replace('"', '""')
        cidade = fake.city().replace('"', '""')
        bairro = fake.neighborhood().replace('"', '""')
        numero = str(random.randint(1, 9999))
        cep = fake.postcode().replace('-', '')
        email = fake.email().replace('"', '""')

        sql_statements.append(f'("{nome}", "{cpf}", "{telefone}", "{logradouro}", "{cidade}", "{bairro}", "{numero}", "{cep}", "{email}")')

    sql_insert = "INSERT INTO clientes (nome, cpf, telefone, logradouro, cidade, bairro, numero, cep, email) VALUES \n" + ",\n".join(sql_statements) + ";"
    return sql_insert

# Gera a SQL e imprime
sql_script = generate_sql_insert(100)
print(sql_script)
