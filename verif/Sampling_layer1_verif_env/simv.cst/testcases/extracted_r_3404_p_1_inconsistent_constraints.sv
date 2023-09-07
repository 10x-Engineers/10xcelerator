class c_3404_1;
    integer i = -566;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3404_1;
    c_3404_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z1xxx0xx1z011x10x0111z00x1111z0xzxxxzzxxxxzxzxzzxxxxxzxxzxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
