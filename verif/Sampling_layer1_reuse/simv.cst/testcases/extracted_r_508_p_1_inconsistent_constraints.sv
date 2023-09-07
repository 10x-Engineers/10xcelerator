class c_508_1;
    integer i = -83;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_508_1;
    c_508_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zx1z0z11zx1z00z011xzx1z10xx0xz1zzzxzxzxxxxzxxzxxzxzxxzxzzxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
