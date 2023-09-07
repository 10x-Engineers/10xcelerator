class c_2084_1;
    integer i = -346;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2084_1;
    c_2084_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0z01z01xx0x0z0zzxxxxz0z1xx00x00xzzzxxxxxzxzzzzzxzxxxxxzzxxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
