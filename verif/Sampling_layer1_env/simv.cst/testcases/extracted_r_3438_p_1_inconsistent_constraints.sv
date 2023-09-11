class c_3438_1;
    integer i = -571;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3438_1;
    c_3438_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01xzx0x0zz0x0z1x01011x0xxzz0011zzxxzxxzxxzzzxxxzxxzxzxzzzxxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
