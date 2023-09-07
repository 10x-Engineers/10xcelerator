class c_2533_1;
    integer i = -421;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2533_1;
    c_2533_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x00111z00xx0z011x0x00xz01z00xzzzzzzzxxxxzxzzxzxzzzxzxxxxzzzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
