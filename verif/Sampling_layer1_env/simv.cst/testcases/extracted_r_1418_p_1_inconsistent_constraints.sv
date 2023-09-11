class c_1418_1;
    integer i = -235;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1418_1;
    c_1418_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0zx0zxxzx0101zzz0x0101x110zx0zzzzxxzxxxxxxzxzzzxxxzzzzxzzzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
