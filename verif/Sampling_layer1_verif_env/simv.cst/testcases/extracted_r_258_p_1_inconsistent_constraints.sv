class c_258_1;
    integer i = -41;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_258_1;
    c_258_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zxz0z1001z1z10z01x10110000110zxzxzxxzzzxzzzxzxxzxxzxzzzxzzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
