class c_3144_1;
    integer i = -522;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3144_1;
    c_3144_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx01101z0xz1100xz0z0zx10x0x1xz1zzxzxxxxxxzxxxzxxxxzzzzxxxzzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
