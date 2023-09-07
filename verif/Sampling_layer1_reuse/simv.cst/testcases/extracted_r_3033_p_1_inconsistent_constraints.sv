class c_3033_1;
    integer i = -504;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3033_1;
    c_3033_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x11zx0x1zz1x11xzxzz1x01001110z0xxzxzxxxxxzxzxzxzxxzzxxxxxxxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
