class c_2194_1;
    integer i = -364;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2194_1;
    c_2194_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x10zz0z0z0x11x1zx0z0x00xzz011x1xxxzxxxxxzzzxzzxxxzzxxxzxzzzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
