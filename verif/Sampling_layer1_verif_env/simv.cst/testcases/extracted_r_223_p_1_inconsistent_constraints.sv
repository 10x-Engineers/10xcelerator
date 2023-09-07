class c_223_1;
    integer i = -36;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_223_1;
    c_223_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00z1101x1x011xz10000xz00z0x0z1zxzzzzzzzxxxxzxzxzxzxzxzzzxxzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
