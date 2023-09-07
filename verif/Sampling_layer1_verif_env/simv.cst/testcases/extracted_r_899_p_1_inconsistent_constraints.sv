class c_899_1;
    integer i = -148;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_899_1;
    c_899_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10z0z1zx1110x111x0001011x01x1x11zzxzzzzxxzxxxxxxzzxxzxxzzxxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
