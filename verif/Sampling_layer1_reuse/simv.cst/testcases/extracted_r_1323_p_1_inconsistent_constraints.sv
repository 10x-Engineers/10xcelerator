class c_1323_1;
    integer i = -219;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1323_1;
    c_1323_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0z0x0xxxz1x111z11zz1x1z0z11zxx0xzxxxxxxzzzxzzxxzxzzxxzxxxzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
