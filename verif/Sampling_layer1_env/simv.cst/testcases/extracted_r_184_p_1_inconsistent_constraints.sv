class c_184_1;
    integer i = -29;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_184_1;
    c_184_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x10zx1zxz00xzzz1zx00000010101z0xxxzzzxxxxzxzxxxzxxzxxxxzzxxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
