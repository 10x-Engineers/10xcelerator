class c_1491_1;
    integer i = -247;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1491_1;
    c_1491_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz1xz1zz100zx0z10zz0zz1xz0xz11x0zzxxzzxzzzxzxzzxxxxxzxxxxzxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
