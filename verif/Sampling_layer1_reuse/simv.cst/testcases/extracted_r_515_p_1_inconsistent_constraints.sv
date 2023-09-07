class c_515_1;
    integer i = -84;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_515_1;
    c_515_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xxzzzz1z010x00z100x111x0x1x1zz1xzzxxzxzxxxxxzxzxzzzxxzzzzxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
