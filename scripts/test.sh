#!/bin/bash

# 1. Задаем тестовую строку
INPUT_STRING="hello world from test"
EXPECTED_OUTPUT="test from world hello"

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
