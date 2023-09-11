class c_2054_1;
    integer i = -341;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2054_1;
    c_2054_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00110xzx1xzzx0zx1z01zzzxzz1x0x0xxxxzzzxxzxxzxxzzzxxxxxxzzxzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
