class c_263_1;
    integer i = -42;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_263_1;
    c_263_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xz10z001x0z1xzxzz10xx1zzzxxxz10zzzxxzxzxzxxxxzxxzzxxzzzxxzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
