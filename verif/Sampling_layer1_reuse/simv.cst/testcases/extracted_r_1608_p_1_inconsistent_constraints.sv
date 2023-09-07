class c_1608_1;
    integer i = -266;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1608_1;
    c_1608_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz1x0zxxxz00x1z1xxxzz1x1z1z0zz1xxzzzzxzzzzzzzzxzzxxxxxxzxxxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
