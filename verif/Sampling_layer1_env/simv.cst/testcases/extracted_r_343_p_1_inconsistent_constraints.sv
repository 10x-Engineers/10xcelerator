class c_343_1;
    integer i = -56;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_343_1;
    c_343_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x11z1z1zzz1zz0zx1111xzz111x10z0zxxzxxxzzxxxzxzzxzzxxzzzxxzxxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
