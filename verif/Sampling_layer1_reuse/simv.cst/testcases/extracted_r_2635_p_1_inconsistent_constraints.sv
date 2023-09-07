class c_2635_1;
    integer i = -438;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2635_1;
    c_2635_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zx11z01x10000z01x01xx1x0xzx0zz1zxxxzzxzzzzxzxxzzzzxzzxzzzzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
