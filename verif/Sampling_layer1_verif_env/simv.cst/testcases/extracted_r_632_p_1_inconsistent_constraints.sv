class c_632_1;
    integer i = -104;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_632_1;
    c_632_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxxz1x11z01001xzzxxz10x0z0zx01zzxzxzxxxzzzzzxzzxzzxzzxzzzzzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
