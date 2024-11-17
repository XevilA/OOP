#include <iostream>
#include <string>
using namespace std;

class Kernel {
public:
    string KernelVersion;
    string KernelType;
};

class DisplayKext {
public:
    int res;
    int ppi;
    double fps;

private:
    double mem;
    bool off_mem = false;
    bool on_mem = true;
};

void memory(Kernel k, DisplayKext d) {
    d.res = 1440;
    d.ppi = 400;

    cout << "Resolution: " << d.res << "p\n";
    cout << "PPI: " << d.ppi << endl;
}

int main() {
    Kernel kernelObj;
    DisplayKext displayObj;

    kernelObj.KernelVersion = "6.x";
    kernelObj.KernelType = "Linux";

    cout << "Kernel Type: " << kernelObj.KernelType << "\n";
    cout << "Kernel Version: " << kernelObj.KernelVersion << endl;

    memory(kernelObj, displayObj);

    cout << "C++ Linux Kernel V6.X" << endl;
    return 0;
}
