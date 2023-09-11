class c_3291_1;
    integer i = -547;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3291_1;
    c_3291_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x10z100z1z1x1xx0z1xzxx1x0x0x0110xxxxxzzxzxzxxzzzzzzzzxzxzxzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
