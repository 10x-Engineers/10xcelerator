class c_1327_1;
    integer i = -220;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1327_1;
    c_1327_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx11xx10x1011z1xz10xxz1xx11xx000zzxzxxzzzxxxzxxxxxxzxxxxzzzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
