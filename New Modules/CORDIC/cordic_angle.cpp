#include <iostream>
#include <iomanip> // For std::setw, std::setfill, std::setprecision
#include <cmath>   // For atan2, pow, M_PI

int main() {
    int nstages = 16;
    int phase_bits = 18;

    for (unsigned k = 0; k < (unsigned)nstages; k++) {
        double x, deg;
        unsigned phase_value;
        x = std::atan2(1., std::pow(2, k));
        deg = x * 180.0 / M_PI;
        x *= (4.0 * (1ul << (phase_bits - 2))) / (M_PI * 2.0);
        phase_value = (unsigned)x;

        // Output using std::cout and I/O manipulators
        std::cout << "\tassign\tcordic_angle[" << std::setw(2) << k << "] = "
                  << std::setw(2) << phase_bits << "'h"
                  << std::hex << std::setw((phase_bits + 3) / 4) << std::setfill('0') << phase_value
                  << std::dec << "; //" << std::fixed << std::setprecision(6) << deg << " deg\n";
    }
    return 0;   
}