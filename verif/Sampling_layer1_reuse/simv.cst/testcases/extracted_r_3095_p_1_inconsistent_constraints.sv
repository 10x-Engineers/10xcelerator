class c_3095_1;
    integer i = -514;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3095_1;
    c_3095_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x11zxz1xz1101010zx100zx1zx010x0zzzzzzxxxxxxzxzxzxxzxxzzxxzxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
