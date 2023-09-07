class c_2174_1;
    integer i = -361;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2174_1;
    c_2174_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx1zxxx10x10x00x0zz11z01x10z01x0xzxxzzxxxxzxxzzxxxzxzzzzxxxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
