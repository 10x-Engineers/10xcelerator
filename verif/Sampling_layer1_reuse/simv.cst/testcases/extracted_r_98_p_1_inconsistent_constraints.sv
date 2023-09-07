class c_98_1;
    integer i = -15;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_98_1;
    c_98_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "011zx1zzx0zz00zz10zz1z0z0z000110zxxzzzxzzzzzxzzxzzxzzzzxzxzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
