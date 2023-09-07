class c_209_1;
    integer i = -33;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_209_1;
    c_209_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10zxzzxz0z11xzzx0101z01x0x10010xxxxxxxzxzxxzxzzzxxzxzxzzxxzxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
