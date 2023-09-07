class c_3071_1;
    integer i = -510;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3071_1;
    c_3071_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11zz010zzx01z0xx101x0zzzz00x1x11zzzzxzzxxzzxzzxxzzzzxzzzzxzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
