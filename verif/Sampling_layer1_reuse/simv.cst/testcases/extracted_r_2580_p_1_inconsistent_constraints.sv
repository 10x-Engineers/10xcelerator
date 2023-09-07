class c_2580_1;
    integer i = -428;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2580_1;
    c_2580_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zx10zzzx11101zxzz1z0zz11xxz1xx0zxxxxxxxzxzxzxzxxxxzxxzxxzzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
