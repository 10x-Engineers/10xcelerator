class c_1889_1;
    integer i = -313;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1889_1;
    c_1889_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx01zx0xx0z1x0xxzx0z1110z0xz00z1xxzzzzzzzxxzxzzxzzzxzxzzzzzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
