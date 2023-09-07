class c_3372_1;
    integer i = -560;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3372_1;
    c_3372_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz11xxz00x0zxx10x1xx0x11xz0z10x0xzxxxzzzzxzxzxxxxzxzxxzxxxxxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
