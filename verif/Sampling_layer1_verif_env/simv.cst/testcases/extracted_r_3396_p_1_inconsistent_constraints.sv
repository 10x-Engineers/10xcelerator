class c_3396_1;
    integer i = -564;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3396_1;
    c_3396_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz11101zx0zzzx110zz11z1xx0x11xzzzzzzzzxzzxzxxzzzzxxxzxzzxxzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
