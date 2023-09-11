class c_1116_1;
    integer i = -184;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1116_1;
    c_1116_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x1z10x11xzx1010x001zxx011x000x0xzzxxxzxzxzzzxxzxzzxxzzzzzzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
