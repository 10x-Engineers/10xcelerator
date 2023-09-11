class c_3032_1;
    integer i = -504;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3032_1;
    c_3032_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xxxxx10z100z1zz1101x1z0zx0xzx01zzxxxzxzxzzxzxxzxxzzxzzxzzzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
