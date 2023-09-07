class c_1886_1;
    integer i = -313;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1886_1;
    c_1886_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x0zx10z0111xxx1x0z00zz01zzxxx1xzxxzzzzxzxxzzzxzxzxxzzzxzzxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
