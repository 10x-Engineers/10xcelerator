class c_952_1;
    integer i = -157;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_952_1;
    c_952_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0zzz1zzzxxxx01xz010zx1x11x11x11xzxxxxxxzxxzzzxzzzzzzxzxxzxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
