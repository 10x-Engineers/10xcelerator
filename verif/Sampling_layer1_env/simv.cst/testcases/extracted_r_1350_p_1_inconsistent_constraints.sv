class c_1350_1;
    integer i = -223;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1350_1;
    c_1350_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10zz000zzz11x1xx11101zxx0z0z1z01zzzxxzxxzxzxzxxxxxxxzxzzxxxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
