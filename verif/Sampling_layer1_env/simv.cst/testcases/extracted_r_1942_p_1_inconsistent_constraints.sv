class c_1942_1;
    integer i = -322;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1942_1;
    c_1942_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz0zz1xzx10zx110zx00010zz100xz0xxxxxxxzxzzxxzzxxxxxxxzxxzxxxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
