class c_335_1;
    integer i = -54;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_335_1;
    c_335_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx010110zz10z0xx0z01x0x0xxx1xz1zzzxzzzzxzxxzxxzxzzxzxxzxxzzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
