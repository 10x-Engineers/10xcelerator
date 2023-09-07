class c_197_1;
    integer i = -31;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_197_1;
    c_197_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z0zz11xzx010011xxz0xz1000x001z0zzxxzzzzzxxzxxzxxzxxzzxxzxzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
