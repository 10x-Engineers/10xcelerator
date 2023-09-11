class c_1262_1;
    integer i = -209;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1262_1;
    c_1262_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10000z100101xzx1z1zxz0100z101101zzxxzxxzxzzzzzxzzxxxxzxxxxxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
