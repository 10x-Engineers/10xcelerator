class c_3277_1;
    integer i = -545;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3277_1;
    c_3277_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz10zx1z001zz11010zx11z0x10x00z0zxzxzxzzzzxxxxzzzxxzxxzxxzzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
