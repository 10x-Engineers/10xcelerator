class c_1488_1;
    integer i = -246;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1488_1;
    c_1488_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz11110x1z00xz1z10x0xzx0zzxz01x1xzzzxxzxxxzzzzzxxzzxzzzxzxxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
