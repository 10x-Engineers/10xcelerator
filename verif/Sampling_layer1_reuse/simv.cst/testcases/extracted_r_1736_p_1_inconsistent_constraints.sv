class c_1736_1;
    integer i = -288;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1736_1;
    c_1736_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xx1zzx0zx0zx0x0x10011x0x1z1z10xzxzzxzxzxzzxzzxxzxxzzzzzxxzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
