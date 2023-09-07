class c_2583_1;
    integer i = -429;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2583_1;
    c_2583_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "100zzz101xxz1x0zz0x0xzxzxx100100zzzzzxxzxzzzzxxxzzxzzzzzxxxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
