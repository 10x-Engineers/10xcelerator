class c_933_1;
    integer i = -154;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_933_1;
    c_933_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z0x1z0x0xx1zz11zz01zx10x0xx1xxzzxzzzxxxzxzzxzzzxzxxzxxzzzzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
