class c_2065_1;
    integer i = -343;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2065_1;
    c_2065_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0xz1z0zz00xzx1x0x1xz1zxz000zzx0zzzxzzxxzzzxxxxzxxxzzxxzzxxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
