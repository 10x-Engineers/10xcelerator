class c_485_1;
    integer i = -79;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_485_1;
    c_485_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0101xx00xz01010z00z0x111z000z1z1xzxxxzzzxxzxxxzzzzzzxzzzzzxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
