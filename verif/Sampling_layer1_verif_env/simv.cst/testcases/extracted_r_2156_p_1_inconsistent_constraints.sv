class c_2156_1;
    integer i = -358;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2156_1;
    c_2156_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zxz1z00z00x0xzxzz0x10zz1000x01xxzzzxzzxzzxxzzxzxxxxxzxxzxzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
