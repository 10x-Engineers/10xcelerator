class c_1188_1;
    integer i = -196;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1188_1;
    c_1188_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "110xx1z0x111z1xxxx0x0xzxxzx0x0z0zzxzzzxzxxzzxzxxzxzxzzzxxzxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
