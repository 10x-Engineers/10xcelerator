class c_3178_1;
    integer i = -528;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3178_1;
    c_3178_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxx1z0xx0101111x0x1zz11z0zz01xx0xxzzxxxxxzzxzzxxzzxxzxxzxxxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
