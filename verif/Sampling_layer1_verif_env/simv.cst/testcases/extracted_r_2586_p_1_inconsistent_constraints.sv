class c_2586_1;
    integer i = -429;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2586_1;
    c_2586_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x00z11zzxxzz011zxzzz0x1zx0z0xzzzzzzxxxzxxzxxxxzxzxxzxzzxxxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
