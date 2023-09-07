class c_1528_1;
    integer i = -253;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1528_1;
    c_1528_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z1zx1zz01xx0z0010x1010xz1x101z0zzxxzzzxxxzxxzzxzzzzzzzzxzzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
