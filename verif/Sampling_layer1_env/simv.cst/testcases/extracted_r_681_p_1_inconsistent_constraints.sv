class c_681_1;
    integer i = -112;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_681_1;
    c_681_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz001z0x0zx101010000xz10z10x10x1xzxxzxzxzzxzxxxzxzzxxxxxzzzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
