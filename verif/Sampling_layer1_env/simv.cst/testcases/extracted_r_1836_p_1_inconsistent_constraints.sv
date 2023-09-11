class c_1836_1;
    integer i = -304;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1836_1;
    c_1836_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx0z0z0zzzxzxx0zz111zzx10zxz10z1zzzxxxxzzxzzxzzxxzzzxzxzxxzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
