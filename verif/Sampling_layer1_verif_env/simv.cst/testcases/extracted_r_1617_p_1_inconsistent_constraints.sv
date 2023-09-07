class c_1617_1;
    integer i = -268;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1617_1;
    c_1617_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "101x0z1z00zxx10x0xxx0xzxzxx0z1x1xzxzxxzzzzzxzzxxxxxzzxxxzxzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
