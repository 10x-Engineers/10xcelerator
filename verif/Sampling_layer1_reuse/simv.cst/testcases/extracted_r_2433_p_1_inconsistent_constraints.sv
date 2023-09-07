class c_2433_1;
    integer i = -404;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2433_1;
    c_2433_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzzx0xzx0z10xz10xz010xz1z0xz01zxzzzzzzxxzxzzxxzzzxxxxxxzxxzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
