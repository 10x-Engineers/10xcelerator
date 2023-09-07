class c_1299_1;
    integer i = -215;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1299_1;
    c_1299_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z1z1z0x1zz1zx11x00zzx1x1x0z0zxzzxxzzzzxzzxzzxzzxzzxzzxxzxxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
