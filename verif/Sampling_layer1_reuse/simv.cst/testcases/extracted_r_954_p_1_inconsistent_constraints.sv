class c_954_1;
    integer i = -157;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_954_1;
    c_954_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x0xz01zz101z0xzxx11x11011zxxx1zxxzxxzxzxzzxzxzzzxxzzxzxzxzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
