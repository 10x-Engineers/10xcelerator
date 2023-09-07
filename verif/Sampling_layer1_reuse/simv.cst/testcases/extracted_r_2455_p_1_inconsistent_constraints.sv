class c_2455_1;
    integer i = -408;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2455_1;
    c_2455_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x1xz1x10xxxzxxx0zxzxxx10xx000x1xzzzxxxzxxzzzzzxxzxzxzxxxzxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
