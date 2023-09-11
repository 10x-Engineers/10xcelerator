class c_2288_1;
    integer i = -380;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2288_1;
    c_2288_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11xzz10001101xz1xx1xx10z00x0x0xxxxxxxzzxzxxxxxzzzxxzxxzxzxxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
