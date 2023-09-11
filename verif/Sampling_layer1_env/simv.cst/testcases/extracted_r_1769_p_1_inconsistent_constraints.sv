class c_1769_1;
    integer i = -293;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1769_1;
    c_1769_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "110101zxx10zz1xz1z0x10zxx10z0x0xxxzzzzzzxzxzxxzzzzzxzxxzxxxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
