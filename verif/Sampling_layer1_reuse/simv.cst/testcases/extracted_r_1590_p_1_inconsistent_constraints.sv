class c_1590_1;
    integer i = -263;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1590_1;
    c_1590_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx1xxx11zx00x0z1z1x100x00z101zxzzzxxzzzzzxzxzzxzzzzzxzzxzzxxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
