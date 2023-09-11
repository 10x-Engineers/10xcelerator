class c_1526_1;
    integer i = -253;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1526_1;
    c_1526_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z000zzzxzxxz0z01x11zx11z10x00x0zzzzzxzzxzzzxzzzxzzxzxzzzxzzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
