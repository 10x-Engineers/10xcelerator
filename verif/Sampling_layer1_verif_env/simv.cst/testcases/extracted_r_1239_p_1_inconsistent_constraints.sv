class c_1239_1;
    integer i = -205;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1239_1;
    c_1239_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzxxxz010011x101xzx10x1zxx011zz0zzxzxzzxxzxzzzzxxzzzxxxxxzzzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
