class c_1890_1;
    integer i = -313;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1890_1;
    c_1890_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z010zxz1zx1z1x001000xxx01xx0xxxxxxxzzzxzxxxxxxxzxzzxxxzzzzxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
