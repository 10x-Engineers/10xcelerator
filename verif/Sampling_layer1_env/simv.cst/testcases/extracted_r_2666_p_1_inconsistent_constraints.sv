class c_2666_1;
    integer i = -443;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2666_1;
    c_2666_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxz01zx1xz1x1x0zxxx1z1x01xxz10zxxzzxxzxxzxxzzzxzzxxzxxzzzxzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
