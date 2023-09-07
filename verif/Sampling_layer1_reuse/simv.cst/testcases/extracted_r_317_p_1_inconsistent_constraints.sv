class c_317_1;
    integer i = -51;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_317_1;
    c_317_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0011xxxzz101000001zx1xzzz1z01010xzzzzxxzzxxzzzxzxxzxxxzxxxzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
