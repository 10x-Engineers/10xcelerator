class c_2670_1;
    integer i = -443;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2670_1;
    c_2670_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "011100z111zx11xz010z10z01xz11100xzzxxzzzzxxzxzzxzxzzzxzzzxxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
