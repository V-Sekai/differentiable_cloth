build:
    mkdir build -p
    cd build && cmake .. -G "MinGW Makefiles" -DCMAKE_BUILD_TYPE=Release
    cmake --build build --parallel

optimize demo randseed:
    @just build
    ./build/DiffCloth -demo {{demo}} -mode optimize -seed {{randseed}}

visualize demo expName:
    @just optimize {{demo}} {{expName}}
    ./build/DiffCloth -demo {{demo}} -mode visualize -exp {{expName}}

clean:
    rm -rf build
