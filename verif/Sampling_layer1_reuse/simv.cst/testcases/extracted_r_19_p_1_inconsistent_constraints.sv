class c_19_1;
    integer i = -2;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_19_1;
    c_19_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz0101zzxzx001x0x1zx0zxzzzz00zzxzzzzzzxxxxxxzxxzxxzxxzxxxxxxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
