class c_3416_1;
    integer i = -568;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3416_1;
    c_3416_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "110x000011110xxx01xzxzx0z0xzxzzzzxxzxxxxzzxzzxzxzzxzxxxxxzzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
