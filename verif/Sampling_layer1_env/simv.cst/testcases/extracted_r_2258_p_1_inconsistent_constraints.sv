class c_2258_1;
    integer i = -375;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2258_1;
    c_2258_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00xzzxz1zxzzz0111xxzz001xzxzzxx0xxxxxxzzzzxxxxzzxxzxxxzxxzxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
