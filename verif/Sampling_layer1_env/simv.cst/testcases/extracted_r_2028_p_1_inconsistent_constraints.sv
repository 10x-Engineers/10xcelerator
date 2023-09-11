class c_2028_1;
    integer i = -336;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2028_1;
    c_2028_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11z001z01zx0x10xxx0101zz110x0x10xxzxzxzxzxxxzzzxzxzzxzzzzxxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
