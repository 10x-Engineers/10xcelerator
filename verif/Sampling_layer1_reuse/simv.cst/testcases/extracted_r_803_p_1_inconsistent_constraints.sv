class c_803_1;
    integer i = -132;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_803_1;
    c_803_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zzx110z10100x1z10x10zx1z1xxxx10xxzxzzzzzxxzzzzxxxzxzzxzzzxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
