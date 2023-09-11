class c_1152_1;
    integer i = -190;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1152_1;
    c_1152_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xx0zzx0zx11zz1z1100xx0x0z0111zxzxxxzzxzxzzzzzzxxxxxxxzzzzzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
