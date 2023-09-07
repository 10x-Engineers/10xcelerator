class c_2906_1;
    integer i = -483;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2906_1;
    c_2906_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "111z1zxz0x00x111x0zz10x11x110000zzzxzxxxxxxxxzxxxxxzzxzzzzxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
