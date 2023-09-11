class c_2806_1;
    integer i = -466;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2806_1;
    c_2806_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x11zzzx0zx0100x1xzzzzx00xz011x0xzzzxzxzzxzzxzxzzzxxzzxzzxxzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
