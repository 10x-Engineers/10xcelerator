class c_871_1;
    integer i = -144;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_871_1;
    c_871_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzz10xxzx0xxz11zx01zzx1zx1zx10xzxxzxzxzzxxzzzzxzzxzxzzxxxxzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
