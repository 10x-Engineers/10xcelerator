class c_2330_1;
    integer i = -387;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2330_1;
    c_2330_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz1zxxzxz01xx0010z1x1x1xz0z10zzzzzxzzxxzxxxzzxzxxzzxzxzzzzzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram