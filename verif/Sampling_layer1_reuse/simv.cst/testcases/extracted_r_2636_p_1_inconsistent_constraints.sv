class c_2636_1;
    integer i = -438;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2636_1;
    c_2636_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xxx11xxzzz10zz00zz111zxxzz011xzxxxxzzzzzzzxzxzxxzxxzxxzzxxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
