class c_1978_1;
    integer i = -328;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1978_1;
    c_1978_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "110zzz00z01001zzz000z0z11xzx0x1zzxzxzzxzxxxzxxzzxxzxxzzzzxxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
