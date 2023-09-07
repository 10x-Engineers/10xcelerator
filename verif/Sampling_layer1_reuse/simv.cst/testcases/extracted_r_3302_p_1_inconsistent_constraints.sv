class c_3302_1;
    integer i = -549;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3302_1;
    c_3302_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz11100zx110xz00xzx1010z0z1xz101zxxxzzzzxzxzxxzzxxxxxxxzzxxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
