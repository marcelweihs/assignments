#include <stdio.h>
#include "decrypt.h"

int main() {
    char input[] = "Qvrfr Nhstnor vfg trfpunssg! Fhcre!";
    char output[36];
    decrypt(input, output);
    printf("%s\n", output);
}
