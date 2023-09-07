class c_2759_1;
    integer i = -458;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2759_1;
    c_2759_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxxx11xzzxz1zxx0xxxzx1z10xzxx10zzzxxzzzzzzzxxxxxzzzzzxxzzxxxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
