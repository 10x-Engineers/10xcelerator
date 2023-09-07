class c_3313_1;
    integer i = -551;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3313_1;
    c_3313_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzzx10xzz0zz110z1z110x00x0x11xx0xxxzzxxzxzzzxzxxxxzxzxxxzzzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
