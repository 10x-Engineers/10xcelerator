class c_2479_1;
    integer i = -412;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2479_1;
    c_2479_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0101zz1z1zxx1xz1z1x0101x10zx0x1xxxzzxxxxxxzxxxzxxxxxzxxzzxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
