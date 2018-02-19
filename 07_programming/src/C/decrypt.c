
void decrypt(const char* input, char* output) {
    char* pi;
    char* po;

    for (pi = (char*)input, po = output; *pi; pi++, po++) {
        if (*pi >= 'A' && *pi <= 'Z') {
            *po = 'A' + ((*pi - 'A' + 13) % 26);
        }
        else if (*pi >= 'a' && *pi <= 'z') {
            *po = 'a' + ((*pi - 'a' + 13) % 26);
        }
        else {
            *po = *pi;
        }

    }

    *(++po) = '\0';
}
