class c_534_1;
    integer i = -87;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_534_1;
    c_534_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "111z0xz101x1z00z0011zxxxz1x1z0z0zzxzxzxxxzxxxxxzzxzxxxxzxxzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
