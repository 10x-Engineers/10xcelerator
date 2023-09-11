class c_601_1;
    integer i = -99;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_601_1;
    c_601_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1x1xzzz100000x1z1xzz1x1x01zx0xzxxxzxxzzzzxzzzxxxxxxxxzxxxzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
