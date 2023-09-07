class c_1437_1;
    integer i = -238;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1437_1;
    c_1437_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x10z11x0z1xx11z1xxzzzz10z1zzz1z0zxzzzzzzxxxzxxzzxzzzzxzzxxxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
