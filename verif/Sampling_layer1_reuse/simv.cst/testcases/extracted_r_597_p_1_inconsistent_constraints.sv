class c_597_1;
    integer i = -98;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_597_1;
    c_597_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx1101x11100zzzzz10x1101x1101zxzxzzxxzxzxxxzzzzxzxzxzxzxxzxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
