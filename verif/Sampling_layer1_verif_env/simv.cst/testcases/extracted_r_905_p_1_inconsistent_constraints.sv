class c_905_1;
    integer i = -149;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_905_1;
    c_905_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0110z0xzz1x1zx1zzz0010x1xzxzzzxzzzxxzxzzxzzxxzzzxzzzxzxzxzxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
