class c_3403_1;
    integer i = -566;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3403_1;
    c_3403_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x0xzzx0011xx0z0xz0x0101zzzz0xzxxxxzxzxxzzxzxzzzxxzxxxzxxzzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
