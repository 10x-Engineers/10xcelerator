class c_232_1;
    integer i = -37;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_232_1;
    c_232_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z0x010zxz0z0x0xz0z10001z1zxzz1xzxzzzxzxzzxzxzxxzxzxxzxzzzzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
