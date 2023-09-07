class c_1506_1;
    integer i = -249;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1506_1;
    c_1506_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxxz0x1001x001zz00xz1z0zz001xx01zzxzzzxxzzzxxxzzzzxxzzzxxzxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
