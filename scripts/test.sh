#!/bin/bash

# 1. Задаем тестовую строку
INPUT_STRING="Волк не тот, кто волк, а тот, кто волк"
# 2. Ожидаемый результат (Слова в обратном порядке)
EXPECTED_OUTPUT="волк кто тот, а волк, кто тот, не Волк"

# 2. Запускаем программу и сохраняем результат
# Предполагаем, что бинарник лежит в корне (как мы договорились)
RESULT=$(./reverse-words "$INPUT_STRING")

# 3. Проверяем, совпадает ли результат с ожидаемым
echo "Testing with input: '$INPUT_STRING'"
echo "Expected: '$EXPECTED_OUTPUT'"
echo "Got: '$RESULT'"

if [ "$RESULT" == "$EXPECTED_OUTPUT" ]; then
    echo "TEST PASSED"
    exit 0
else
    echo "TEST FAILED"
    exit 1
fi
