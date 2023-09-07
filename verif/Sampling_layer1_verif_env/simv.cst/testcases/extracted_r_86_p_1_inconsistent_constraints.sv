class c_86_1;
    integer i = -13;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_86_1;
    c_86_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10zx1x10011x01x1x10zx1x0zx00z0zxzxzzxxxxxzxzxzxxzzxxxxxxxzzxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
