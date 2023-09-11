class c_3075_1;
    integer i = -511;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3075_1;
    c_3075_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x011zxxx1x10011z0z0x1100zzz11z0zxzzzzzzzzxxxzzxzzxxzxzzzxzzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
