class c_182_1;
    integer i = -29;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_182_1;
    c_182_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "010000x1x01xzzz01zxxxz1100000100xxzzxzxxzxzzzzzxxxzzxzxxzxxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
