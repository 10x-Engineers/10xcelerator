class c_1102_1;
    integer i = -182;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1102_1;
    c_1102_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11xx110z1x1x0010x01z1z1xz100011xzzxzzxxxxxzzxxzxxzzxzzxxzzzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
