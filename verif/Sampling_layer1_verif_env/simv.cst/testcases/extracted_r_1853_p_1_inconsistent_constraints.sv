class c_1853_1;
    integer i = -307;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1853_1;
    c_1853_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "010x1z0zx0xz1100zx0x1z0z10110011xzzxzzxzxzzzxzzxxzzxxzzzzzzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
