class c_3105_1;
    integer i = -516;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3105_1;
    c_3105_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1101z1x0z111z0x0zz11zz100zxx1z1xxzzxxxxxxxxzzxzzxxzzzxzzxzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
