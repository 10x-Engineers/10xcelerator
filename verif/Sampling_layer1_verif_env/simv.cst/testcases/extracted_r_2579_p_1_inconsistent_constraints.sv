class c_2579_1;
    integer i = -428;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2579_1;
    c_2579_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z0101z1xxx0zzxz0zx11111zxx0x100zzxxzxzxzxzzzxzxxxzxxzxxxzzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
