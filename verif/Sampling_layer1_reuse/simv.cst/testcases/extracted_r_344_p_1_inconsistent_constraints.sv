class c_344_1;
    integer i = -56;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_344_1;
    c_344_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "001zxxzx1101z001111zxzxxzxzzxzxxzzzzxxzxzxzzxzzzxzzxxzzxxxzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
