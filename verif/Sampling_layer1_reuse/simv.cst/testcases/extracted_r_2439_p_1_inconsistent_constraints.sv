class c_2439_1;
    integer i = -405;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2439_1;
    c_2439_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z00zz110zxzzzx01x0x11z01xzxxz1xzxzzzxxzzzxzxzxxxxxxzxzzzzzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
