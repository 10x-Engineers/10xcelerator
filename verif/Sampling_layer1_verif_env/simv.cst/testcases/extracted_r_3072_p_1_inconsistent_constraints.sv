class c_3072_1;
    integer i = -510;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3072_1;
    c_3072_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00x00zx0x1z10x111xx0010zxzx1010zxxzzxzxxxxxzzzxxzzzzxxzxzxzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
