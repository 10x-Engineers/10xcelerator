class c_660_1;
    integer i = -108;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_660_1;
    c_660_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00001zx101zxzz1z0xx01x0010zz0z0zxxzxxxxxxxzzzzxzxxxzxzzzzxxzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
