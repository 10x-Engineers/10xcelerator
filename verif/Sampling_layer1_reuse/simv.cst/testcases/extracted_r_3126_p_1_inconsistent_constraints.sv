class c_3126_1;
    integer i = -519;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3126_1;
    c_3126_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz10101xxz1zzxxxz00z0000xz010zzzzzzxzxxzxxxzxxzxxzzzxzxxzxxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
