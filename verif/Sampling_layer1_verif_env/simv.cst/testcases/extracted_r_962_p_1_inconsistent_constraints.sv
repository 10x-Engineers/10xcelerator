class c_962_1;
    integer i = -159;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_962_1;
    c_962_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxx0x0x11z0z11xzx1x0zz1x1001xx01zzzxzzzzxzzzxzxxzxxxzxxxzxzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
