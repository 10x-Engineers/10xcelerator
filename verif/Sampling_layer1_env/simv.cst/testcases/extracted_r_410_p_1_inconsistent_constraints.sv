class c_410_1;
    integer i = -67;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_410_1;
    c_410_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0zxx011z110000000x0xx10z0011z10zzxzzzxzxxzxzxxxzxxxxxxzxxzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram