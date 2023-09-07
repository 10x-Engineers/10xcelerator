class c_3042_1;
    integer i = -505;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3042_1;
    c_3042_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzx10x0zx1zxz1z01z10x0zx1xx0xx10zxxxzzxzzxxzzzzzzzzzzzxxzxxxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
