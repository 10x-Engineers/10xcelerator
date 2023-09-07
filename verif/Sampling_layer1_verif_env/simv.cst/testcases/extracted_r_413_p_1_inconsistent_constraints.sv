class c_413_1;
    integer i = -67;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_413_1;
    c_413_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz11zz01zxxx11xz0010z0zxz000xz1zzxxxzzzzxzzzxxxxxxxzzzxzzzxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
