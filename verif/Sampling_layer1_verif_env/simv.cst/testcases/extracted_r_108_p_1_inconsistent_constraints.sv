class c_108_1;
    integer i = -16;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_108_1;
    c_108_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xz01x0x1zx0z0xzxx1x1z0x1xxx0zx0xzzzzxxxzzzzzxxxxzxzzxxzzzzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
