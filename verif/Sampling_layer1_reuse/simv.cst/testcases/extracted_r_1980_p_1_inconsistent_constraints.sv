class c_1980_1;
    integer i = -328;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1980_1;
    c_1980_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx0zxxz00x00z1zzxxzz00x0x1x1xz1xxxxxzzzzxzxxxzzzzzxxzzzxzxzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
