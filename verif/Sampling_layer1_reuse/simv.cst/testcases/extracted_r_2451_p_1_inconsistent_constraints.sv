class c_2451_1;
    integer i = -407;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2451_1;
    c_2451_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01xxxxzxzxzzzz0xxz11z1xzx00x0x01xxzzxzzzxzxzxzzzxxxxzzzxzzxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
