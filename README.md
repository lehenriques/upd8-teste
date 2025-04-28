# Projeto de teste

## 💻 Tecnologias utilizadas
- PHP  >=  8.2
- Laravel framework 12
- [Composer](https://getcomposer.org/download) (dependency manager)

## 💡 Requerimentos
- PHP >= 8.2 or higher (you can download PHP [here](https://www.php.net/downloads)).
- [Composer](https://getcomposer.org/download) (dependency manager).

## ⚙️ Instalação
1. Clone o projeto.
```bash
git clone https://github.com/lehenriques/upd8-teste.git
```

2. Vai até a pasta do projeto
```bash
cd upd8-teste
```

3. Instale os vendors necessários com Composer.
```bash
composer install
```

4. Instale no projeto o npm, e rode o build do projeto (apeser de não estar utilizando react nem vue vai ser necessario pois vamos usar o axio).
```bash
npm install && npm run build
```

5. Configure o Laravel.
```bash
mv .env.exemple .env
php artisan key:generate
```

6. Configure o banco de dados de acordo com a sua realidade.
```.env
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=upd8
DB_USERNAME=root
DB_PASSWORD=
```

## 🌟 Agora como usar
1. E execute:
```bash
php artisan serve
```

2. Agora navegue até http://localhost:8000 no seu navegador.

3. Use o migrate e o seeder
```bash
php artisan migrate --seed
```

## 📌 Obrigatoriedades:

1. Gerar um script SQL que a partir do ID do cliente, retorne todos os representantes que podem atendê-lo.
no caso a url seria http://127.0.0.1:8000/api/customer/{customer}/representatives sendo visivel também no 
editar usuário se tiver algum representante aparece listado abaixo dos dados para editar.
```bash
curl http://127.0.0.1:8000/api/customer/2/representatives
```
2. Gerar um script SQL que retorne todos os representantes de uma determinada cidade.
```bash
curl http://127.0.0.1:8000/api/representatives/{city_id}
```
3. isponibilizar um arquivo com o DDL da base completa.
No projeto acesse a pasta database/schema/upd8.sql
