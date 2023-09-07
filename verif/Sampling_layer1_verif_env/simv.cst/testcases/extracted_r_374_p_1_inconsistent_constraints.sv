class c_374_1;
    integer i = -61;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_374_1;
    c_374_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzzxxzxz111x10zzx1x0z0x10x101xz0zxzzzzzzxxxzzzzzzzxxzxxzzxxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
