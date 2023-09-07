class c_1167_1;
    integer i = -193;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1167_1;
    c_1167_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0zzz010z11zzzx1x0xxx0xzz1100x00xxxxzxxxxxzzzzzzxxxzxzzzxxzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
