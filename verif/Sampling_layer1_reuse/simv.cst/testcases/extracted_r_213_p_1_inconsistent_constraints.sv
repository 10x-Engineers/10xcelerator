class c_213_1;
    integer i = -34;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_213_1;
    c_213_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1z0xz110101z0zx011zxz01x1001x01xzzzzxzxzzxxxxzzxzzzzzxxxzxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
