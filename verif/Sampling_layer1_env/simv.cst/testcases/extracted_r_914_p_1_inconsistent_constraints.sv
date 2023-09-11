class c_914_1;
    integer i = -151;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_914_1;
    c_914_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1xz0x0zz01x01zzx0z0zxzx1z0zz1xzxzxxzzzzzzxxxzxzzxxzxzxzxxxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
