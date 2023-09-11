class c_1266_1;
    integer i = -209;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1266_1;
    c_1266_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xz011xxxxxzxz10111x1zxzxz0xxx11xxxxxxxzzxzxxxzxxzxxzzxxzzxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
