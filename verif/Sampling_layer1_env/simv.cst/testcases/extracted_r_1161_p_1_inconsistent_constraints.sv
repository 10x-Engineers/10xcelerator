class c_1161_1;
    integer i = -192;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1161_1;
    c_1161_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "011zz0zz10z1x011z0z0x0x1zzzzzxxzzxxzzzzzzzzxzxzxzzzxzzzzzzxxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
