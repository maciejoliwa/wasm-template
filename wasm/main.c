#include <stdio.h>
#include <emscripten.h>

int main() {
    EM_ASM({
        const body = document.body;

        const image = document.createElement('img');
        const p = document.createElement('p');
        image.src = 'img/wasm.png';
        p.innerHTML = 'This is a <b>WebAssembly</b> template, that does not need 190MB of space to run :)';

        body.appendChild(image);
        body.appendChild(p);
    });

    return 0;
}