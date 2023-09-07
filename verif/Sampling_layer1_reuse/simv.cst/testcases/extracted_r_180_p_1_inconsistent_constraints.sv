class c_180_1;
    integer i = -28;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_180_1;
    c_180_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "011010101x001zxz100xxx01xxzzxxxxxzxzzxzxxxxzxxzzzzxzxzxxxxzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
