class c_897_1;
    integer i = -148;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_897_1;
    c_897_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzz110x00011x10011zz1110z10z10zzzzzzxzzxzxxzzxxxxxxzxzxzzzzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
