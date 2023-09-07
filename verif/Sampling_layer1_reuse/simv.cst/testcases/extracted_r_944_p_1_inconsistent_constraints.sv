class c_944_1;
    integer i = -156;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_944_1;
    c_944_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx1x0z01x110xxz1100z000xz0x0zz1xzzzxxxxxzzzzzxxxzxxzxzxzzxzxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
