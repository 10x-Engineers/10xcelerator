class c_3139_1;
    integer i = -522;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3139_1;
    c_3139_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxzzx1xx0z1x100z0zzz1xz0x11zx00xxzxxxzzzzzzxzxxxzzzzxzxzzxxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
