class c_1227_1;
    integer i = -203;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1227_1;
    c_1227_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zxx11x10z1xzz0x0zx0xxx1x01111zzxxzzzzzzzxxzzxxxxxxzxzxzxxzzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
