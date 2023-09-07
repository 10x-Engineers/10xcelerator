class c_3384_1;
    integer i = -562;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3384_1;
    c_3384_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx0z11zz0zx01xzzz1x0101xzzxz00z0xxxxxzzzzzxxzxzzzzzzxxxzzxxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
