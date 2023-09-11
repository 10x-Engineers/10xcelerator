class c_2370_1;
    integer i = -393;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2370_1;
    c_2370_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx1z0z1x1x0xx01010x10x001xz11xzxxxxxzzzzzzzzxzxxzxxzxzxzxxxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
