pragma circom 2.1.1;

include "./utils/utils.circom";

template MiMC3D(H, W, D) {
    signal input dummy;
    signal input arr[H][W][D]; 
    signal output h;

    h <== MimcHashMatrix3D(H, W, D)(arr);
}

component main { public [ dummy ] } = MiMC3D(4 + 2, 4 + 2, 2);
