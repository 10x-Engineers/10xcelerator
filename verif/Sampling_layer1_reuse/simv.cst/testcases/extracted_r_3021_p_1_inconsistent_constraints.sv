class c_3021_1;
    integer i = -502;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3021_1;
    c_3021_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xx1x01zx1zxx0x01x1z010z1xx0z01xxxxxzzzxxzxxzzxzxzxxzxxxxxzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
