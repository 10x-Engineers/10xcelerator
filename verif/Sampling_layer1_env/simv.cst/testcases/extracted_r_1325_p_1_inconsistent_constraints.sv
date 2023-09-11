class c_1325_1;
    integer i = -219;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1325_1;
    c_1325_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z0x0xzxz1zzx11zxz100x0x111zxx0zxzzzzxzxzxxzxzxzzxxxzzxxxxzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
