class c_84_1;
    integer i = -12;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_84_1;
    c_84_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z01x0x001z0z1x1z0011z101110z1010zxxxzzxzzxxxxxxxzzzxxzxxxzxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
