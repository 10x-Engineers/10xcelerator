class c_1680_1;
    integer i = -278;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1680_1;
    c_1680_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11x01x1xx11zzzzzz0110111z1zz0x10zxzzzzxzzzzxzxxzzxzzxzzxxxxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
