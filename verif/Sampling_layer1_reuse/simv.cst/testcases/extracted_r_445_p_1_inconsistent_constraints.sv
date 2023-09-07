class c_445_1;
    integer i = -73;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_445_1;
    c_445_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z0z11110xx01xzzz10zz1x001x111x1zxzxxzxxzzxzxzzxxzxxzxzzzzxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
