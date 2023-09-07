class c_1432_1;
    integer i = -237;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1432_1;
    c_1432_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z0x0x0x01z0x10z11z1zz100xz0z001xxzzzxxxzzxzxzxxxzxzxxzzzzxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
