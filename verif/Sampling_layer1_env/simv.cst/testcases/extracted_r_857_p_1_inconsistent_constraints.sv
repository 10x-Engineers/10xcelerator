class c_857_1;
    integer i = -141;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_857_1;
    c_857_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz10z0zzz00x10xz10xx1z100x101xxxzxxzxzzxxxxxxxzxzxzxzzxxxzxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
