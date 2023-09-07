class c_1885_1;
    integer i = -313;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1885_1;
    c_1885_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z1xz1x01xxzxxz0x1xxx10x0x11z101xxxzzzzzxxzxxzxzxxzxxxzxxxzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
