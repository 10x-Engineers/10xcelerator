class c_194_1;
    integer i = -31;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_194_1;
    c_194_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz01zx0x0z1z11x1z0z0zx11z0z1zz1xzzzzzzxzzzxzxzzzzxzzzzxzxzzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
