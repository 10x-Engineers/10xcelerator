class c_635_1;
    integer i = -104;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_635_1;
    c_635_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zxz0zx0x0xxz100z1000x101xxxzx00zxxzzzzzxxzzzzxzxxxxxxzzxxxzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
