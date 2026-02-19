#include <iostream>
#include <string>
#include <vector>
#include <sstream>
#include <algorithm>

using namespace std;

// Ограничения для безопасности
const size_t MAX_STR_LEN = 1000;

int main(int argc, char* argv[]) {
    // Проверка на наличие аргументов [cite: 32-35]
    if (argc < 2) {
        cerr << "ERROR: No input string provided." << endl;
        return 1;
    }

    string input = "";
    for (int i = 1; i < argc; ++i) {
        input += argv[i];
        if (i < argc - 1) input += " ";
    }

    // Проверка на слишком длинный ввод
    if (input.length() > MAX_STR_LEN) {
        cerr << "ERROR: Input is too long (max 1000 chars)." << endl;
        return 1;
    }

    stringstream ss(input);
    string word;
    vector<string> words;
    while (ss >> word) words.push_back(word);

    if (words.empty()) return 0;

    reverse(words.begin(), words.end());

    for (size_t i = 0; i < words.size(); ++i) {
        cout << words[i] << (i == words.size() - 1 ? "" : " ");
    }
    cout << endl;

    return 0;
}
