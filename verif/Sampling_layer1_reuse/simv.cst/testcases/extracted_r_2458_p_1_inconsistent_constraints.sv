class c_2458_1;
    integer i = -408;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2458_1;
    c_2458_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z001x1zx0zxx0zzz1zz00zxxxzzxz0x1xzzxxxzzzzzxzxzzzzxxxzxzzzzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
