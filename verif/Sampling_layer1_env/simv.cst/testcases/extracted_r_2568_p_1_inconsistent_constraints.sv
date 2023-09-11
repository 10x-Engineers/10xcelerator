class c_2568_1;
    integer i = -426;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2568_1;
    c_2568_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z11110xzzx1zz0zz00zxzzzz1z0x010zzxxzzxzxzxxzxzzzxxzxxxzzzxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
