class c_2347_1;
    integer i = -390;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2347_1;
    c_2347_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx1z1x1z01zz1zx001x01x0z1z0zx111zxzxzxxzzxzxxxxxxzxxxxzzxzzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
