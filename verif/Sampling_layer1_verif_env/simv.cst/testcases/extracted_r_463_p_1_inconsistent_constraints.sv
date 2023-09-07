class c_463_1;
    integer i = -76;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_463_1;
    c_463_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "111x10zz0xzxzxzx0z1z1zx1x11z0z1xzzzzxzzxzzxxzzxzxxxzxxxxxxxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
