class c_2646_1;
    integer i = -439;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2646_1;
    c_2646_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0x00z0xx0x0x0zz0zz111z0xzz1zzz0xxzzxzxzzxxzzzxxzzxxxzxzxzxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
