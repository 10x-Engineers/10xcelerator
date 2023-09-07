class c_2637_1;
    integer i = -438;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2637_1;
    c_2637_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00xz00x0xxxx0z0x01z1zzxzx1x1x1zxxxxzxxxxxzxzxzxxzxzxzzzxzzxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
