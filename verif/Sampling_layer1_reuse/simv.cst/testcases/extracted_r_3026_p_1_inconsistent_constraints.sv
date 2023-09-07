class c_3026_1;
    integer i = -503;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3026_1;
    c_3026_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01011xz0xzx010z1xz01x10x1xzzxxzzzxxxxxxxxxzzzxxxzxxzzxxzzxxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
