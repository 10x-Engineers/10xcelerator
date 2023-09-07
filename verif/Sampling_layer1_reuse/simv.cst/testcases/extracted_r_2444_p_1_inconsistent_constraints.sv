class c_2444_1;
    integer i = -406;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2444_1;
    c_2444_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx110xx1110z0x1xz0z10z01zx000xxxzxzxxxzzxxzzxzxxzxxzxxzzzxxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
