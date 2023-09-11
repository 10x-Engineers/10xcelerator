class c_3394_1;
    integer i = -564;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3394_1;
    c_3394_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0z110xx0x1zzxzzxz1x0zx0z01xx1xzxxzxzzzxxxzxzzzxxzxzzxxzzzzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
