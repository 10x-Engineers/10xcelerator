class c_522_1;
    integer i = -85;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_522_1;
    c_522_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz0010x1z0x0zz1xxz10x1zz01x00xzzxxxxzxzxzzxzzzzzzxzxzzxxxxzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
