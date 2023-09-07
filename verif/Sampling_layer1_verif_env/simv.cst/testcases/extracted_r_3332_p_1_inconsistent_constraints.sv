class c_3332_1;
    integer i = -554;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3332_1;
    c_3332_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01x010x0z11xzz1z0zx011xzx0x1z0zzzzzzzzxzxzxzxxxxxzxxzxxzzxxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
