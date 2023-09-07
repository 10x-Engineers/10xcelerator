class c_882_1;
    integer i = -145;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_882_1;
    c_882_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10z0z0z0x1zx010110x0zz00101zxxz1xzzxzzxxzxxzxxxxxxzzzxxxzxxxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
