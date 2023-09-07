class c_1940_1;
    integer i = -322;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1940_1;
    c_1940_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0111xxxxzzx01z101x0x011x100zzxxxzxzzzxzxxxxzzzxxxxzxxxxzxxzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
