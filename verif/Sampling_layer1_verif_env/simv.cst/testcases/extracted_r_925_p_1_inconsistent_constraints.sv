class c_925_1;
    integer i = -153;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_925_1;
    c_925_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxzx0xzzz11x11z1111zxzzx1110xz00xxxxxzxzzzzxxzzxzzxxzxzzxzzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
