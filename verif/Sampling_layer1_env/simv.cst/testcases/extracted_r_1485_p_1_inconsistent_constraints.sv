class c_1485_1;
    integer i = -246;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1485_1;
    c_1485_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zzzxzxz1x0z11xx01x011xxzzz1x01xzzxxxxzxxzzzxzxxxzxxzzxzxzxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
