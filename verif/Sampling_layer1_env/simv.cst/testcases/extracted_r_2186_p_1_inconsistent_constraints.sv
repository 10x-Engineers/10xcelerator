class c_2186_1;
    integer i = -363;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2186_1;
    c_2186_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x01x1zz10xzx0zz1xzx1zzz001zzz0x1xxxxzzxzzxxzzxxzxxxzzzxxxxxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
