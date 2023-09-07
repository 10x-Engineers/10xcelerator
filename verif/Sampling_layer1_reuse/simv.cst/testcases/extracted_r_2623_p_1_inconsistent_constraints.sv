class c_2623_1;
    integer i = -436;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2623_1;
    c_2623_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z00xx01x1x01z11z00xzzz11zz010z1zzxzzxxzzzzzzxzzxxxxxzzzxxzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
