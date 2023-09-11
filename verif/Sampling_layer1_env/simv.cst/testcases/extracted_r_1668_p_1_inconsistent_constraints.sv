class c_1668_1;
    integer i = -276;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1668_1;
    c_1668_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "000zxx1zz00x0x0z0zzx1010x0x10110xxxxzzzzxxxxzxzzzxzxzzxzzzxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
