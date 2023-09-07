class c_1463_1;
    integer i = -242;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1463_1;
    c_1463_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzz0zzx100zxx11xzz10x0z000z1xz11zzzxxzxxxzzxzxxxxxxxzzzzzzzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
