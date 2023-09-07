class c_2780_1;
    integer i = -462;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2780_1;
    c_2780_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zxx1x0x0z0010xx01x0z1x101xz1xx0zzxxxxzzxxzzxzxzxzxzzzxxzzzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
