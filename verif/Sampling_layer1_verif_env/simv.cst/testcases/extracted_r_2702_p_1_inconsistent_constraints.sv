class c_2702_1;
    integer i = -449;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2702_1;
    c_2702_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01zzx1zxz1zx0z10zx0xx0x01z10z0zzxxxzzzzxxxxzzxzxzxzzzxxzxzzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
