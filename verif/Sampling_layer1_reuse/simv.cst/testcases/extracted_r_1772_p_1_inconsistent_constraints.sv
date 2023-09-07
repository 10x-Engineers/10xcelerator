class c_1772_1;
    integer i = -294;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1772_1;
    c_1772_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10z1z1zzz010x1zx00z01x111zx1x1xzxzzzxzxxxxxxxxxxzxxzzxzzzxzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
