class c_2413_1;
    integer i = -401;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2413_1;
    c_2413_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzzz10zx0zz101z1z010xxzxzzzzz00zxzzzxxxxzzxxxxzzxxzzxxxzxzzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
