class c_623_1;
    integer i = -102;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_623_1;
    c_623_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "010zz1111x0000z1zxxzx0z0x1111011xxxzzzzzxxxxxxzxxzzxzxzzxxxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
