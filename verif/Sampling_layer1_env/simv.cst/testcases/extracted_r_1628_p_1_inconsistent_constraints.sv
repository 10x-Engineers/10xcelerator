class c_1628_1;
    integer i = -270;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1628_1;
    c_1628_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01xxxzzx1z0z0001x10z0zxx1x1z1z10xzxzxxzzzxxzzzxzzxzxxzxzxxxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
