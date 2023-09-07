class c_2514_1;
    integer i = -417;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2514_1;
    c_2514_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1010xzxxx11011x1110z0zzz00zx1z0xzzxzxzzzzxzxxzxzzzzzxzxzzxxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
