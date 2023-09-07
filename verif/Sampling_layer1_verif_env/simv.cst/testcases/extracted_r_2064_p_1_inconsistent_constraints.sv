class c_2064_1;
    integer i = -342;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2064_1;
    c_2064_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x01zz0x0x00zz100xzzz10x01zz1xzzzxxxzzzxxxxxxxzxxxxzxzxzxxzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
