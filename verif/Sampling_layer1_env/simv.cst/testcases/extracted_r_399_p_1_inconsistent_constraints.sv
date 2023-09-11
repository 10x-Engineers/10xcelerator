class c_399_1;
    integer i = -65;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_399_1;
    c_399_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z11zx0x100z1xxz01zz0z1001zz00x1zxzzzxzxxzxxxzzzxxzxzxzzxxzxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
