# Установка
    $ git clone https://github.com/MagicTearsAsunder/Qmobi_Test.git
    $ cd Qmobi_Test
    $ sudo docker-compose up
    
# Как работает
Необходимо отправить POST запрос в формате JSON:

    {"currency":[валюта В которую конвертируем], "value":[сумма в числовом типе данных (не строка)]}
   
### Например:
      {"currency": "USD", "value": 15}
      {"currency": "RUB", "value": 2000}
    
Причем ключи JSON-а не могут быть другими, значение ключа "currency" может быть только "USD" или "RUB", а значение ключа "value"
только numeric.

### Подобный запрос можно составить через curl:
      curl -i --request POST \
        --data '{"currency":"USD", "value":"15"}' http://[АДРЕС]:[ПОРТ]
        
### Или тестирующим скриптом:
      python tests.py [АДРЕС]:[ПОРТ]
