# language: ru

# Тестовые данные:

Функция: Добавление в бд существующего элемента

  Сценарий: Добавление в бд существующего элемента
    * к БД выполнено подключение "H2" с параметрами:
      | field    | value |
      | user     | user  |
      | password | pass  |


    * к БД выполняется запрос "Добавление товара" c параметрами:
      | field       | value  |
      | FOOD_NAME   | Яблоко |
      | FOOD_TYPE   | Фрукт  |
      | FOOD_EXOTIC | 0      |

    * к БД выполняется запрос "Проверка товаров"
    Тогда количество элементов коллекции "Проверка товаров" не равно нулю

    * к БД выполняется запрос "Проверка дубликатов" c параметрами:
      | field      | value  |
      | dupes      | Яблоко |
      | type_dupes | Фрукт  |

    * к БД выполняется запрос "Удаление товара" c параметрами:
      | field       | value  |
      | food_name   | Яблоко |

    * к БД выполняется запрос "Проверка товаров"
    Тогда количество элементов коллекции "Проверка товаров" равно "4"








