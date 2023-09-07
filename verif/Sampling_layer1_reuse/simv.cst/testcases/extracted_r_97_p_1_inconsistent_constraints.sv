class c_97_1;
    integer i = -15;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_97_1;
    c_97_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x00z10zx1z10x0010x1100xz1x1zz1z0xzxzxzzzxzzxzxzzzzxzxxzxzxxxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
